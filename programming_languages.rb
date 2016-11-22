def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |type_of_language, list|
    list.each do |name, language_details|
      if new_hash[name] == nil
        new_hash[name] = language_details
      end
      if new_hash[name][:style] != nil
        new_hash[name][:style] << type_of_language
      else
        new_hash[name][:style] = [type_of_language]
      end
    end
  end
  new_hash
end


{
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
}
