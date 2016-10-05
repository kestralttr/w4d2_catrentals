class CatRentalRequest < ActiveRecord::Base
  validates :cat_id, :start_date, :end_date, :status, presence: true
  validates :status, inclusion: {in: ["PENDING", "APPROVED", "DENIED"]}

  def overlapping_requests
    overlapping_requests = CatRentalRequest
    .select("id")
    .where("(start_date > #{self.start_date} AND start_date < #{self.end_date})
            OR (end_date < #{self.end_date} AND end_date > #{self.start_date})")
  end

  def overlapping_approved_requests

  end
end
