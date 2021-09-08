class Exam < ApplicationRecord
    belongs_to :evaluation

    /scope :live_examss, lambda { :conditions => ['name.length > ? ', 5] }*/
    scope :live_exams, -> { where('status = ?', true) }
    scope :with_live_exams, -> { includes(:exams).where(exams: { published: true}) }
end