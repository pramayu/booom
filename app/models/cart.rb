class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_many :payment_noties, dependent: :destroy
  belongs_to :user

  def total_price
    line_items.to_a.sum(&:full_price)
  end

  def paypal_encrypted(return_url, notify_url)
    values = {
      :business => 'khapoo@mail.com',
      :cmd => '_cart',
      :upload => 1,
      :return => return_url,
      :invoice => id,
      :notify_url => notify_url,
      :cert_id => "B4Y5KVUJ7JU9C"
    }
    line_items.each_with_index do |item, index|
      if item.theme.present?
        values.merge!({
          "amount_#{index+1}" => item.unit_price,
          "item_name_#{index+1}" => item.theme.name,
          "item_number_#{index+1}" => item.theme.id
          # "receiver_id_#{index+1}" => item.theme.user.id,
          # "receiver_email_#{index+1}" => item.theme.user.email
        })
      elsif item.code.present?
        values.merge!({
          "amount_#{index+1}" => item.unit_price,
          "item_name_#{index+1}" => item.code.name,
          "item_number_#{index+1}" => item.code.id
        })
      elsif item.font.present?
        values.merge!({
          "amount_#{index+1}" => item.unit_price,
          "item_name_#{index+1}" => item.font.name,
          "item_number_#{index+1}" => item.font.id
        })
      elsif item.course.present?
        values.merge!({
          "amount_#{index+1}" => item.unit_price,
          "item_name_#{index+1}" => item.course.name,
          "item_number_#{index+1}" => item.course.id
        })
      elsif item.graphic.present?
        values.merge!({
          "amount_#{index+1}" => item.unit_price,
          "item_name_#{index+1}" => item.graphic.name,
          "item_number_#{index+1}" => item.graphic.id
        })
      elsif item.t3d.present?
        values.merge!({
          "amount_#{index+1}" => item.unit_price,
          "item_name_#{index+1}" => item.t3d.name,
          "item_number_#{index+1}" => item.t3d.id
        })
      elsif item.videofx.present?
        values.merge!({
          "amount_#{index+1}" => item.unit_price,
          "item_name_#{index+1}" => item.videofx.name,
          "item_number_#{index+1}" => item.videofx.id
        })
      end
    end
    encrypted_for_paypal(values)
  end
  PAYPAL_CERT_PEM = File.read("#{Rails.root}/certs/paypal_cert.pem")
  APP_CERT_PEM = File.read("#{Rails.root}/certs/app_cert.pem")
  APP_KEY_PEM = File.read("#{Rails.root}/certs/app_key.pem")

  def encrypted_for_paypal(values)
    signed = OpenSSL::PKCS7::sign(OpenSSL::X509::Certificate.new(APP_CERT_PEM), OpenSSL::PKey::RSA.new(APP_KEY_PEM, ''), values.map { |k, v| "#{k}=#{v}" }.join("\n"), [], OpenSSL::PKCS7::BINARY)
    OpenSSL::PKCS7::encrypt([OpenSSL::X509::Certificate.new(PAYPAL_CERT_PEM)], signed.to_der, OpenSSL::Cipher::Cipher::new("DES3"), OpenSSL::PKCS7::BINARY).to_s.gsub("\n", "")
  end
end
