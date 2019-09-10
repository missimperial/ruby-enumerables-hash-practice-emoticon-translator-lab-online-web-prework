require 'yaml'
require 'pry'

def load_library(file_path)
  emoticon = YAML.load_file("#{file_path}")
  emo = {get_meaning: {}, get_emoticon: {} }
      #emo = {}
      #emo[:get_emoticon] = {#}
    emoticon.each do |meaning, value|
 
      emo[:get_meaning][meaning] = value[1] 
      emo[:get_emoticon][meaning] = value[0]
      #emo[0][0] = {japanese_emoticon: value[1], english_emoticon: value[0]}
      
      binding.pry
    end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

