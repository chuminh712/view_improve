module ApplicationHelper
    def live_exam_count_html(evaluation, exam)
        if @live_exam_hash.invert.include?(evaluation.id) 
            live_exam = content_tag :span, class: "live-block" do
                evaluation.exams.size.to_s.concat("(").concat(evaluation.exams.select { |exam| @live_exam_hash.include?(exam.id) }.size.to_s).concat(")")
            end
            text = content_tag :span, style: "background-color: red;" do
                "LIVE"    
            end
            b = content_tag :span, style: "background-color: red;" do
                content_tag :i, "", class: "<i class='fas fa-address-card'"  
            end
            b + live_exam
        else
            evaluation.exams.size
        end
    end
end
