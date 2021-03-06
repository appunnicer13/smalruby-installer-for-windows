# -*- coding: utf-8 -*-
module RubyToBlock
  module Block
    class HardwareSmalrubotLedTurnOnOrOff < CharacterMethodCall
      include HardwareOperation

      # rubocop:disable LineLength
      blocknize ['^\s*',
                 CHAR_RE,
                 SMALRUBOT_RE, '\.',
                 ON_OFF_RE, '_', LOR_RE, '_led',
                 '\s*$'].join(''),
                statement: true, inline: true
      # rubocop:enable LineLength

      def self.process_match_data(md, context)
        md2 = regexp.match(md[type])
        block = new(fields: { LOR: md2[4], OOO: md2[3] })
        block.smalrubot_name = md2[2]
        add_character_method_call_block(context, md2[1], block)
        true
      end
    end
  end
end
