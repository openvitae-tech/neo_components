# frozen_string_literal: true

module ViewComponent
  module Card
    module StatCardComponent
      def stat_card_component(icon_name:, title:, subtitle:)
        render partial: 'view_components/cards/stat_card_component', locals: { icon_name:, title:, subtitle: }
      end
    end
  end
end
