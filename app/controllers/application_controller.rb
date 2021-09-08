class ApplicationController < ActionController::Base
    def home
        @evaluation = Evaluation.includes(:exams)
        @live_exam_hash = Exam.where(evaluation: @evaluation.map(&:id)).live_exams.pluck(:id, :evaluation_id).inject({}) { |result, element| result[element.first] = element.last; result }
    end
end
