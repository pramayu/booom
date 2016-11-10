module CarrierWave
  module MiniMagick

    def gaussian_blur(radius)
      manipulate! do |img|
        img.gaussian_blur(radius.to_s)
        img = (yield) if block_given?
        img
      end
    end

    # def vignette(path_to_file)
    #   manipulate! do |img|
    #     cols, rows = img[:dimensions]
    #     vignette_img = ::MiniMagick::Image.open(path_to_file)
    #     vignette_img.size "#{cols}x#{rows}"
    #     img = img.composite(vignette_img) do |cmd|
    #       cmd.gravity 'center'
    #       cmd.compose 'multiply'
    #     end
    #     img = yield(img) if block_given?
    #     img
    #   end
  end    

end
