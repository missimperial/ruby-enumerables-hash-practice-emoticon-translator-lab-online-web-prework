require 'yaml'
require 'pry'

def load_library(file_path)
  emoticon = YAML.load_file("#{file_path}")
  
  emo = {get_meaning: {}, get_emoticon: {} }
  
    emoticon.each do |meaning, value|
      emo[:get_meaning][value[1]] = meaning
      emo[:get_emoticon][value[0]] = emoticon[meaning][1]
      
    end
    emo
end

def get_japanese_emoticon(file_path, single)
  emo_hash = load_library(file_path)
  emo_hash[:get_emoticon][single]
  
   binding.pry
end

def get_english_meaning
  # code goes here
end

