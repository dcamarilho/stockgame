namespace :stocks do
  desc "sync stocks"
  task sync: :environment do

    puts "Updating Stocks"

    list_of_stocks = %w(
      ABEV3.SA
      B3SA3.SA
      BBDC3.SA
      BRKM5.SA
      BRFS3.SA
      CMIG4.SA
      CIEL3.SA
      PETR4.SA
      ALPA4.SA
      ARZZ3.SA
      CEDO3.SA
      GRND3.SA
      GUAR3.SA
      JBSS3.SA
      AMAR3.SA
      NATU3.SA
      PCAR4.SA
      CPFE3.SA
      ELET6.SA
      ELPL3.SA
      REDE3.SA
      BBAS3.SA
      EMBR3.SA
      SHUL4.SA
      FJTA4.SA
      WEGE3.SA
      WHRL4.SA
      VALE3.SA
      KLBN4.SA
      SUZB3.SA
      FLRY3.SA
      RADL3.SA
      PSSA3.SA
      GGBR4.SA
      USIM5.SA
      AZUL4.SA
      CCRO3.SA
      GOLL4.SA
      RENT3.SA
    )

    list_of_stocks.each do |stock|
      filepath = "https://br.financas.yahoo.com/quote/#{stock}?p=#{stock}"
      # 1. We get the HTML page content
      html_content = open(filepath).read
      # 2. We build a Nokogiri document from this file
      doc = Nokogiri::HTML(html_content)
      # 3. We search for the correct elements containing the items' title in our HTML doc
      current_value = doc.search('#quote-header-info > div:nth-child(3) div:nth-child(1) > span').text.strip
      current_variation = doc.search('#quote-header-info > div:nth-child(3) div:nth-child(1) > :nth-child(2)').text.strip
      # 4. For each item found, we extract its title and print it

      stock = Stock.find_or_initialize_by(name: stock)
      stock.price = current_value.gsub!(",",".").to_f
      stock.variation = /\((.*?)\)/.match(current_variation)[1]
      stock.save

      puts "Stocks Updated!"
    end
  end
end
