class RefresherController < ApplicationController
  def update
    if Refresher.refresh_all
      flash[:notice] = "Alle Daten wurden erfolgreich aktualisiert."
      redirect_to hall_of_fame_index_url
    else
      flash[:notice] = "Aktualisierung ist fehlgeschlagen."
      redirect_to account_url
    end
  end
end
