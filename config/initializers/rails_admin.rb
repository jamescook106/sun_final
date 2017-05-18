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
      field :lr do
        required false
        label 'Learning Route News'
        help 'Learning Route News Tag'
      end
      field :lra do
        required false
        label 'Learning Route Africa News'
        help 'Learning Route News Africa Tag'
      end
      field :lrp do
        required false
        label 'Learning Route Good Practices'
        help 'Learning Route Good Practices Tag'
      end
      field :short do
        required true
        label 'Preview text'
        help 'This is a short summary of the article that will appear on the news homepage'
      end
      field :long do
        required true
        label 'Paragraph 1 (this will be in bold)'
        help 'This is your intoductory paragraph/paragraphs that will appear before the quote'
      end
      field :quote do
        required true
        label 'Quote'
        help 'This is the quote from the articles'
      end
      field :post do
        required true
        label 'Main text'
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
      end
    end
  end

  config.model Country do
    edit do
      field :name do
        required true
        label 'Country and Alliance Name'
        help 'Name of the Country and Alliance'
      end
      field :region do
        required true
        label 'Region of country'
      end
      field :key_p do
        required true
        label 'Key Priorities'
        help 'One Sentance to describe the key priorities of the Alliance'
      end
      field :key_a do
        required true
        label 'Key Activities'
        help 'One Sentance to describe the key activities of the Alliance'
      end
      field :nns do
        required true
        label 'National Nutrition Stats'
        help 'Please provide a link to the progress report for National Nutrition Stats'
      end
      field :contact do
        required true
        label 'Contact Details'
        help 'Contact Details for the Alliance'
      end
      field :website do
        required false
        label 'Link to Website'
        help 'Full URL of website'
      end
      field :photo do
        required true
        label 'Photo of Alliance'
      end
      field :news do
        required false
        label 'Latest News'
        help 'Please provide a few sentances highlighting the latest news of the Alliance'
      end
    end
  end

  config.model Champion do
    edit do
      field :first_name do
        required true
        label 'First name(s)'
        help 'First name(s) of the Champion'
      end
      field :last_name do
        required true
        label 'Last name(s)'
        help 'Last name(s) of the Champion'
      end
      field :country do
        required true
        label 'Country'
        help 'Country of Champion'
      end
      field :LR do
        required false
        label 'Learning Route Champion'
        help 'Tick this box to specify that this Champion is a Learning Route Champion'
      end
      field :featured do
        required false
        label 'Featured'
        help 'Tick this box to feature this Champion on the homepage'
      end
      field :short_description do
        required true
        label 'Short Description'
        help 'This is a short description of the champion that will appear on the Nutrition Champions home page'
      end
      field :long_text do
        required true
        label 'Long Description'
        help 'This is a long description of the champion that will appear on each champion’s full profile'
      end
      field :contact do
        required true
        label 'Contact Details'
        help 'Contact Details of the Champion'
      end
      field :headshot do
        required false
        label 'Champion Photo'
        help 'Please upload a photo of the champion'
      end
    end
  end

  config.model Resource do
    edit do
      field :name do
        required true
        label 'Resource Title'
        help 'Title of the Resource'
      end
      field :approved do
        required false
        label 'Approved?'
        help 'Tick to approve the resourse'
      end
      field :hid do
        required true
        label 'Resource Uploader ID'
        help 'This will automatically be populated'
      end
      field :protected do
        required false
        label 'Protect the Resource?'
        help 'If the resource is protected it can only be downloaded by registered users'
      end
      field :featured do
        required false
        label 'Feature the Resource?'
      end
      field :short do
        required true
        label 'Short Description'
        help 'A short description of the resource which will appear on the ‘Resources’ homepage'
      end
      field :long do
        required true
        label 'Long Description'
        help 'A full description of the resource which will appear on the full resource profile'
      end
      field :language do
        required true
        label 'Language of Resource'
      end
      field :contenttype do
        required true
        label 'Content Type of Resource'
      end
      field :thematic_tag do
        required true
        label 'Theme of Resource'
      end
      field :content_tag do
        required true
        label 'Skills represented by the resource'
      end
      field :file do
        required false
        label 'Resource File'
      end
      field :external do
        required false
        label 'External Link'
        help 'Please supply a link to the resource if not uploading e.g. Youtube, Picasa etc'
      end
      field :created_at do
        required false
        label 'Resource Creation Date'
      end
      field :updated_at do
        required false
        label 'Resource Update Date'
      end
    end
  end

end
