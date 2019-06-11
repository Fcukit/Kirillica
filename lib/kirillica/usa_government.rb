module Kirillica
  module UsaGovernment
    TABLE = {
      'а' => 'a',
      'б' => 'b',
      'в' => 'v',
      'г' => 'g',
      'д' => 'd',
      'е' => ['e', 'ye'],
      'ё' => ['e', 'ye'],
      'ж' => 'zh',
      'з' => 'z',
      'и' => 'i',
      'й' => 'y',
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
      'х' => 'kh',
      'ц' => 'ts',
      'ч' => 'ch',
      'ш' => 'sh',
      'щ' => 'shch',
      'ъ' => '',
      'ы' => 'y',
      'ь' => '',
      'э' => 'e',
      'ю' => 'yu',
      'я' => 'ya',
    }

    WINDOW = 4

    # transliteration
    def self.translit(phrase='')
      return '' if phrase.empty?
      translitted_phrase = ''

      phrase.each_char.with_index(1) do |char, i|
        if TABLE[char].nil?
          translitted_phrase << char
        elsif ['е', 'ё'].include?(char)
          if 1 == i || ['ъ', 'ь'].include?(phrase[i - 1])
            translitted_phrase << 'ye'
          else
            translitted_phrase << 'e'
          end
        else
          translitted_phrase << TABLE[char]
        end
      end

      translitted_phrase
    end

    # invert transliteration
    def self.revert!(phrase)
      raise 'cannot revert phrase'
    end
  end
end
