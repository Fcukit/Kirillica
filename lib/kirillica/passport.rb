module Kirillica
  module Passport
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
      'ъ' => '``',
      'ы' => 'y',
      'ь' => '`',
      'э' => 'e`',
      'ю' => 'yu',
      'я' => 'ya',
    }

    DIPHTHONGS = {
      'ай' => 'ay',
      'ей' => ['ey', 'yey'],
      'ий' => 'iy',
      'ой' => 'oy',
      'уй' => 'uy',
      'ый' => 'yy',
      'эй' => 'ey',
      'юй' => 'yuy'
    }

    WINDOW = 3

    # transliteration
    def self.translit(phrase='')
      return '' if phrase.empty?
      translitted_phrase = ''

      chars = phrase.downcase.chars

      while chars.any?
        window = 2
        if diphthong = DIPHTHONGS[chars.take(window).join]
          c = diphthong.is_a?(Array) ? diphthong.first : diphthong
          translitted_phrase << c
          chars.drop(window)
        else
          translitted_char = TABLE[chars.first]

          if translitted_char.nil?
            translitted_phrase << chars.first
          else
            c = translitted_char.is_a?(Array) ? translitted_char.first : translitted_char
            translitted_phrase << c
          end
          chars = chars.drop(1)
        end
      end

      translitted_phrase
    end

    # invert transliteration
    def self.revert!(phrase)
      # TODO
    end
  end
end