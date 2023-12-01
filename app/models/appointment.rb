class Appointment < ApplicationRecord

  enum treatment_types: {
    manicure: "Manicure",
    pedicure: "Pedicure",
    massage: "Massage",
    haircut: "Haircut"
  }

  belongs_to :user
  has_one :family, through: :users

  def name
    "#{treatment} for #{user.email} at #{when_at}"
  end
end
