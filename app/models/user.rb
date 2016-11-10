class User < ApplicationRecord
  attr_accessor :remember_token, :activation_token, :reset_token, :temp_password
  before_save :downcase_email, :whitespace_remove
  before_create :create_activation_digest
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
		    format: {with: VALID_EMAIL_REGEX},
		    uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}, :on => :update, :unless => lambda{ |user| user.password.blank? }#, :on => :create, :unless => lambda{ |user| user.password.blank? }
  validates :password_confirmation, presence: true, allow_nil: true
  def User.digest(string)
  	cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
  	BCrypt::Engine.cost
  	BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def User.new_token
  	SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

  def activate
    update_attribute(:activated, true)
    update_attribute(:activated_at, Time.zone.now)
  end

  def send_activation_email
    UserMailer.account_activation(self).deliver_now
  end

  def send_reviewer_email
    ReviewerMailer.reviewer_activation(self).deliver_now
  end

  def create_reset_digest
    self.reset_token = User.new_token
    update_attribute(:reset_digest, User.digest(reset_token))
    update_attribute(:reset_sent_at, Time.zone.now)
  end

  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end

  def password_reset_expired?
    reset_sent_at < 2.hours.ago
  end

  
  has_many :themes, dependent: :destroy
  has_many :codes, dependent: :destroy
  has_many :graphics, dependent: :destroy
  has_many :t3ds, dependent: :destroy
  has_many :videofxes, dependent: :destroy
  has_many :fonts, dependent: :destroy
  has_many :courses, dependent: :destroy
  belongs_to :country
  belongs_to :state
  has_many :withdrawals, dependent: :destroy
  has_many :vacancies, dependent: :destroy
  
  has_one :social_network, dependent: :destroy
  accepts_nested_attributes_for :social_network

  mount_uploader :avatar, AvatarUploader
  has_many :reviews, dependent: :destroy

  has_one :ourstore, dependent: :destroy
  accepts_nested_attributes_for :ourstore

  has_many :comments, dependent: :destroy

  # follow
  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :following

  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end

  acts_as_voter

  #collection
  # has_many :collections

  # has_many :wishlists, dependent: :destroy

  # notification
  has_many :notifications, dependent: :destroy

  has_one :akusuka, dependent: :destroy

  belongs_to :team
  has_many :messagereviewers, dependent: :destroy

  has_many :allskills, dependent: :destroy
  has_many :skills, through: :allskills
  has_many :carts, dependent: :destroy
  has_many :notes, dependent: :destroy

  def skill_user=(names)
    self.skills = names.split(",").map do |name|
      Skill.where(name: name.strip).first_or_create!
    end
  end

  def skill_user
    self.skills.map(&:name).join(", ")
  end

  has_many :contacts
  private

  def downcase_email
    self.email = email.downcase
  end

  def whitespace_remove
    self.username = username.to_s.downcase.gsub(/\s+/, '')
  end

  def create_activation_digest
  	self.activation_token = User.new_token
  	self.activation_digest = User.digest(activation_token)
  end

  acts_as_messageable

  def mailboxer_name
    self.username
  end

  def mailboxer_email(object)
    self.email
  end

end
