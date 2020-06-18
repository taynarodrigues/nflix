class MoviePage
    include Capybara::DSL

    def add
      find('.nc-simple-add').click
    end

    def create(title)
      find('input[name=title]').set title
    end
end