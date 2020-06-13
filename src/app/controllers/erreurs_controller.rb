class ErreursController < ::ApplicationController
    
    def page_introuvable
        render status: 404
    end

    def erreur_interne
        render status: 500
    end

    def unacceptable
        render status: 422
    end
end