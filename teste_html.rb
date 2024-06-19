require 'html-proofer'

options = {
  :assume_extension => true,
  :check_favicon => true,
  :check_html => true,
  :disable_external => true,  # Desabilita a verificação de links externos
  :check_img_http => true,
  :enforce_https => true,  # Força a verificação de HTTPS
  :report_invalid_tags => true,
  :allow_hash_href => true,  # Permite href="#" ou href="#hash"
  :check_internal_hash => true,
  :url_ignore => [
    /http:\/\/lattes.cnpq.br\/.*/,
  ]  # Ignora URLs específicas
}

HTMLProofer.check_directory("_site", options).run
