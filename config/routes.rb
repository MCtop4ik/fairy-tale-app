Rails.application.routes.draw do
  get "v1/get_tales", to: "tales#get_tales"
  get "v1/tale", to: "tales#get_tale"
  get "v1/glossary", to: "glossary#get_grammar"
end
