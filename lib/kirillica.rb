require "kirillica/gost_2000"
require "kirillica/usa_government"
require "kirillica/iso_9"

module Kirillica

  class Error < StandardError; end

  # transliteration
  def self.translit(phrase, mode = :gost_2000)
    phrase = phrase.downcase

    case mode
    when :gost_2000
      GOST_2000.translit(phrase)
    when :usa_government
      UsaGovernment.translit(phrase)
    when :iso_9
      ISO_9.translit(phrase)
    end
  end

  # invert transliteration
  def self.revert!(phrase, mode = :gost_2000)
    phrase = phrase.downcase

    case mode
    when :gost_2000
      GOST_2000.revert!(phrase)
    when :usa_government
      UsaGovernment.revert!(phrase)
    when :iso_9
      ISO_9.revert!(phrase)
    end
  end
end
