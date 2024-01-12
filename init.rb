require File.expand_path('../lib/locale_integer_format.rb', __FILE__)

Redmine::Plugin.register :locale_integer_format do
  name 'Locale Integer Format plugin'
  author 'glauni'
  description 'Enables input and display of integer custom fields with decimal separator set in locale.'
  version '0.0.4'
  url 'https://github.com/glauni/locale-integer-format'
  author_url 'https://github.com/glauni/locale-integer-format'

  RedmineApp::Application.config.after_initialize do
    Redmine::FieldFormat::IntFormat.include LocaleIntegerFormat::IntegerFormatPatch
  end
end
