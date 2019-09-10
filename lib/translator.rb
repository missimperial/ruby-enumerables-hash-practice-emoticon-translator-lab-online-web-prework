require 'yaml'
require 'pry'

def load_library(file_path)
  emoticon = YAML.load_file("#{file_path}")
  
  emo = {get_meaning: {}, get_emoticon: {} }
  
    emoticon.each do |meaning, value|
      emo[:get_meaning][value[1]] = meaning
      emo[:get_emoticon][value[0]] = emoticon[meaning][1]
      #emo[0][0] = {japanese_emoticon: value[1], english_emoticon: value[0]}
      
      #binding.pry
    end
    emo
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

