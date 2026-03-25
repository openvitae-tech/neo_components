# frozen_string_literal: true

module ViewComponent
  module Card
    module ContentStudioCourseCardComponent
      def content_studio_course_card_component(bg_image:, tag_text:, tag_text_color:, tag_bg_color:, title:, duration:, modules_count:, labels:, progress_width: nil, extra_labels_count: nil)
        render partial: 'view_components/cards/content_studio_course_card_component', locals: { bg_image:, tag_text:, tag_text_color:, tag_bg_color:, title:, duration:, modules_count:, labels:, progress_width:, extra_labels_count: }
      end
    end
  end
end
