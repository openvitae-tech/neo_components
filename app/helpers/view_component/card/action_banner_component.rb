# frozen_string_literal: true

module ViewComponent
  module Card
    module ActionBannerComponent
      def action_banner_component(image_path:, icon_name:, title:, subtitle:, button_text:, button_url:)
        render partial: 'view_components/cards/action_banner_component', locals: { image_path:, icon_name:, title:, subtitle:, button_text:, button_url: }
      end
    end
  end
end
