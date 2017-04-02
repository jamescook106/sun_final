RailsAdmin.config do |config|

  config.parent_controller = 'ApplicationController'

  ### Popular gems integration

  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end

  config.model News do
    edit do
      field :title do
        required true
        label 'Headline'
        help 'This is the headline for your article'
      end
      field :short do
        required true
        label 'Preview text'
        help 'This is a short summary of the article that would appear on the news homepage'
      end
      field :long do
        required true
        label 'Pre-Quote Text'
        help 'This is your intoductory paragraph/paragraphs that will appear before the quote'
      end
      field :quote do
        required true
        label 'Article Quote'
        help 'This is the quote from the articles'
      end
      field :post do
        required true
        label 'Post-Quote Text'
        help 'This is the paragraph/paragraphs that will appear after the quote'
      end
      field :picture do
        required true
        label 'Image'
        help 'Image needs to be landscape (6x4)'
      end
      field :caption do
        required true
        label 'Image Caption'
        help 'A short image caption including any copyright information '
      end
      field :external do
        required false
        label 'Link to external article'
        help 'Leave this blank unless you are linking to an article you are not hosting on the site'
      end
    end
  end
end
