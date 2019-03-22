module FluxBase
  module BulmaHelpers
    # Add controls in the block passed to this method.
    def actions_fieldset(title = '')
      field_set_tag(title) do
        content_tag(:div, class: 'field has-addons') do
          yield
        end
      end.concat(tag(:hr))
    end

    def display_notice
      return unless notice.present?
      content_tag(:div, class: 'notification is-info') do
        notice
      end
    end

    def display_alert
      return unless alert.present?
      content_tag(:div, class: 'notification is-danger') do
        alert
      end
    end

    # Replaces the auto-generated errors div for record forms.
    def display_errors(record)
      return unless record.errors.any?

      title = "#{pluralize(record.errors.count, 'error')} prohibited this #{record.class.name.downcase} from being saved:"
      create_message(title, class: 'is-danger') do
        content_tag(:ul) do
          record.errors.full_messages.map do |msg|
            content_tag(:li, msg)
          end.inject(&:concat)
        end
      end
    end

    # Creates a Bulma message with the given title and options. Use a block to define the message body.
    def create_message(title, options = {})
      content_tag(:article, class: 'message ' + options.delete(:class), **options) do
        header = content_tag(:div, title, class: 'message-header')
        body = content_tag(:div, class: 'message-body') do
          yield
        end

        header.concat(body)
      end
    end
  end
end
