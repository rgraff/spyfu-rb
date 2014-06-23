module SpyFu
  module Api
    class Kss < Base
      BASE_ENDPOINT = 'kss.api'

      def get_term_page_keywords(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_term_page_keywords", params, nil, client.account_id, client.account_key)
      end

    end
  end
end
