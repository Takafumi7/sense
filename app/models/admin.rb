class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 # :registerable,:recoverable, 管理者が直接DBに登録するようにするため管理者モデルファイルから外す

  devise :database_authenticatable,
          :rememberable, :trackable, :validatable

# Setup accessible (or protected) attributes for your model
# attr_accessible :title, :body
end
