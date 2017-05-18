class CountryController < ApplicationController
  def network
    @countries = Country.order('name ASC')
  end

  def specific
    @countries = Country.find_by_id(params[:id])
  end
end
