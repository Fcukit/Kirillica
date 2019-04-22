module Kirillica
  module GOST_2000
    TABLE = {
      'а' => 'a',
      'б' => 'b',
      'в' => 'v',
      'г' => 'g',
      'д' => 'd',
      'е' => 'e',
      'ё' => 'yo',
      'ж' => 'zh',
      'з' => 'z',
      'и' => ['i', 'i\''],
      'й' => 'j',
      'к' => 'k',
      'л' => 'l',
      'м' => 'm',
      'н' => 'n',
      'о' => 'o',
      'п' => 'p',
      'р' => 'r',
      'с' => 's',
      'т' => 't',
      'у' => 'u',
      'ф' => 'f',
      'х' => 'x',
      'ц' => ['cz', 'c'],
      'ч' => 'ch',
      'ш' => 'sh',
      'щ' => 'shh',
      'ъ' => '``',
      'ы' => 'y\'',
      'ь' => '`',
      'э' => 'e`',
      'ю' => 'yu',
      'я' => 'ya',
    }

    WINDOW = 3

    # transliteration
    def self.translit(phrase)
      translitted_phrase = ''

      phrase.each_char do |char|
        translitted_char = TABLE[char]
        if translitted_char.nil?
          translitted_phrase << char
        else
          c = translitted_char.is_a?(Array) ? translitted_char.first : translitted_char
          translitted_phrase << c
        end
      end

      translitted_phrase
    end

    # invert transliteration
    def self.revert!(phrase)
      reverted_phrase = ''
      chars = phrase.scan /\w/

      while chars.any?
        window = WINDOW

        while window > 0
          raise 'cannot revert phrase' if window.zero?

          char_group = chars.take(window).join

          inverted_hash = {}
          TABLE.invert.each { |key, value| key.is_a?(Array) ? key.each { |kk| inverted_hash[kk] = value } : inverted_hash[key] = value }

          if inverted_hash[char_group]
            reverted_phrase << inverted_hash[char_group]
            chars = chars.drop(window)
            break
          end

          window -= 1
        end
      end

      reverted_phrase
    end
  end
end