# frozen_string_literal: true

module ViewComponent
  module Card
    module CertificateCardComponent
      def certificate_card_component(certificate:)
        has_thumbnail = certificate.certificate_thumbnail.attached?
        course_title = certificate.course.title
        download_path = rails_blob_path(certificate.file, disposition: "attachment")
        share_path = share_certificate_profile_path(certificate_id: certificate.id)

        render partial: 'view_components/cards/certificate_card_component', locals: {
          certificate:,
          has_thumbnail:,
          course_title:,
          download_path:,
          share_path:
        }
      end
    end
  end
end