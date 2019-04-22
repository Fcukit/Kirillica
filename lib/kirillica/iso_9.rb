module Kirillica
  module ISO_9
    TABLE = {
      'а' => 'a',
      'б' => 'b',
      'в' => 'v',
      'г' => 'g',
      'д' => 'd',
      'е' => 'e',
      'ё' => 'ё',
      'ж' => 'ž',
      'з' => 'z',
      'и' => 'i',
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
      'х' => 'h',
      'ц' => 'c',
      'ч' => 'č',
      'ш' => 'š',
      'щ' => 'ŝ',
      'ъ' => '"',
      'ы' => 'y',
      'ь' => "'",
      'э' => 'è',
      'ю' => 'û',
      'я' => 'â',
    }

    WINDOW = 1

    # transliteration
    def self.translit(phrase)
      translitted_phrase = ''

      phrase.each_char do |char|
        translitted_char = TABLE[char]
        translitted_phrase << (translitted_char.nil? ? char : translitted_char)
      end

      translitted_phrase
    end

    # invert transliteration
    def self.revert!(phrase)
      reverted_phrase = ''

      phrase.each_char do |char|
        reverted_char = TABLE.invert[char]
        raise 'cannot revert phrase' unless reverted_char

        reverted_phrase << reverted_char
      end

      reverted_phrase
    end
  end
end