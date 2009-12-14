# ArgonHelpers

module PlanetArgon
  module FlashMessageConductor
    FLASH_MESSAGE_TYPES = [ :error, :warning, :info, :success ]
    
    module ControllerHelpers
      def add_error(msg)
        flash[:error] = msg
      end
      def add_error_now(msg)
        flash.now[:error] = msg
      end
      
      def add_warning(msg)
        flash[:warning] = msg
      end
    
      def add_warning_now(msg)
        flash.now[:warning] = msg
      end
      
      def add_info(msg)
        flash[:info] = msg
      end
      
      def add_info_now(msg)
        flash.now[:info] = msg
      end
      
      def add_success(msg)
        flash[:success] = msg
      end
      
      def add_success_now(msg)
        flash.now[:success] = msg
      end
      
      #aliases - for convenience
      def add_notice(msg)
        add_info msg
      end
      
      def add_notice_now(msg)
        add_info_now msg
      end

      def add_message(msg)
        add_success msg
      end
      
      def add_message_now(msg)
        add_success_now msg
      end
      
    end
  
    module ViewHelpers
      def render_flash_message( css_class, message = "" ) 
        return "" if message.nil? or message.blank?
        content_tag( "div", message, :class => "#{css_class}" )
      end
    
      def render_flash_messages( div_id = "flash_messages", div_class = "" )
        div_content = ''
        FLASH_MESSAGE_TYPES.each do |key|
          div_content << render_flash_message( key.to_s, flash[key] ) unless flash[key].blank?
        end
        if div_content.blank?
          return ""
        else
          return content_tag( 'div', div_content, :id => div_id, :class => div_class )
        end
      end
      
      def flash_message_set?
        flash_set = false
        FLASH_MESSAGE_TYPES.each do |key|
          flash_set = true unless flash[key].blank?
        end
        return flash_set
      end
    end
  end
end