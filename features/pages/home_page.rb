class HomePage < SitePrism::Page 
    set_url "https://www.rga.com"

    element :header, ".page-header"

    #language_drop
    element :language, ".main-navigation-desktop-list__item_language"
    element :language_menu, ".main-navigation__box__content__list"
    
    #offices_drop
    element :offices, ".main-navigation-desktop-list__item_dropdown", match: :first
    element :offices_menu, ".main-navigation__box__content__columns"
    element :new_york, "#ember60"
    
    #search_drop
    element :search, ".main-search", match: :first
    element :search_menu, ".main-navigation-dropdowns"
    element :search_input, "#ember49"
end