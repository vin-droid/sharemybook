class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 TEMP_EMAIL_PREFIX = 'change@me'
  TEMP_EMAIL_REGEX = /\Achange@me/

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable
  devise :database_authenticatable, :registerable, :confirmable,
    :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  validates_format_of :email, :without => TEMP_EMAIL_REGEX, on: :update

   ratyrate_rater
   has_one :image, as: :imageable
  acts_as_paranoid

  has_many :address
  has_many :books
  has_many :views ,as: :viewable
  has_one  :profile_pic ,:class_name => 'Image'  , as: :imageable
  has_many :users_reviews, :class_name => 'Review', as: :reviewable
  has_many :reviews_for_books,->{where(reviewable_type:'Book')}, :class_name => 'Review', :foreign_key => 'reviewer'
  has_many :reviews_for_users,->{where(reviewable_type:'User')}, :class_name => 'Review', :foreign_key => 'reviewer'
  belongs_to :state
  belongs_to :city 





  def self.find_for_oauth(auth, signed_in_resource = nil)

    # Get the identity and user if they exist
    identity = Identity.find_for_oauth(auth)

    # If a signed_in_resource is provided it always overrides the existing user
    # to prevent the identity being locked with accidentally created accounts.
    # Note that this may leave zombie accounts (with no associated identity) which
    # can be cleaned up at a later date.
    user = signed_in_resource ? signed_in_resource : identity.user

    # Create the user if needed
    if user.nil?

      # Get the existing user by email if the provider gives us a verified email.
      # If no verified email was provided we assign a temporary email and ask the
      # user to verify it on the next step via UsersController.finish_signup
      email_is_verified = auth.info.email && (auth.info.verified || auth.info.verified_email)
      email = auth.info.email if email_is_verified
      user = User.where(:email => email).first if email

      # Create the user if it's a new registration
      if user.nil?
        user = User.new(
          f_name: auth.extra.raw_info.first_name,
          l_name: auth.extra.raw_info.last_name,
          #username: auth.info.nickname || auth.uid,
          email: email ? email : "#{TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com",
          password: Devise.friendly_token[0,20]
        )
        user.skip_confirmation!
        user.save!
      end
    end

    # Associate the identity with the user if needed
    if identity.user != user
      identity.user = user
      identity.save!
    end
    user
  end

  def email_verified?
    self.email && self.email !~ TEMP_EMAIL_REGEX
  end


















         def full_name
           self.f_name + " " + self.l_name
         end

end
