namespace :stocks do
  desc "sync stocks"
  task sync: :environment do
    list_of_stocks = %w(
    ABEV3.SA
    BTOW3.SA
    B3SA3.SA
    BBAS3.SA
    BBDC3.SA
    BBDC4.SA
    BRAP4.SA
    BRKM5.SA
    BRFS3.SA
    CCRO3.SA
    CMIG4.SA
    CIEL3.SA
    CPLE6.SA
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
    end
  end
end
