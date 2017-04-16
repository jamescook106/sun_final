class CountryController < ApplicationController
  def network
    @countries = Country.all
  end

  def specific
    @countries = Country.find_by_id(params[:id])
  end
end
