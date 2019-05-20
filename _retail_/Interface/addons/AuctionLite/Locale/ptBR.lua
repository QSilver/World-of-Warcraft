local L = LibStub("AceLocale-3.0"):NewLocale("AuctionLite", "ptBR");
if not L then return end

L["%dh"] = "%dh"
L["(none set)"] = "(nada configurado)"
L["|cff00ff00Scanned %d listings.|r"] = "|cff00ff00Sondadas %d listagens.|r"
L["|cff00ff00Using previous price.|r"] = "|cff00ff00Usando preço anterior.|r"
L["|cff808080(per item)|r"] = "|cff808080(por item)|r"
L["|cff808080(per stack)|r"] = "|cff808080(por pilha)|r"
L["|cff8080ffData for %s x%d|r"] = "|cff8080ffDados para %s x%d|r"
L["|cffff0000[Error]|r Insufficient funds."] = "|cffff0000[Erro]|r Fundos insuficientes."
L["|cffff0000[Warning]|r Skipping your own auctions.  You might want to cancel them instead."] = "|cffff0000[Perigo]|r Pulando seus próprios leilões.  Talvez você devesse cancelá-los."
L["|cffff0000Buyout less than bid.|r"] = "|cffff0000Preço de Compra menor que oferta.|r"
L["|cffff0000Buyout less than vendor price.|r"] = "|cffff0000Preço de Compra menor que preço do vendedor.|r"
L["|cffff0000Invalid stack size/count.|r"] = "|cffff0000Tamanho/total de pilhas inválidas.|r"
L["|cffff0000No bid price set.|r"] = "|cffff0000Nenhum valor de oferta definido.|r"
L["|cffff0000Not enough cash for deposit.|r"] = "|cffff0000Sem dinheiro suficiente para o depósito.|r"
L["|cffff0000Not enough items available.|r"] = "|cffff0000Sem ítens suficientes.|r"
L["|cffff0000Stack size too large.|r"] = "|cffff0000Tamanho da pilha muito grande.|r"
L["|cffff0000Using %.3gx vendor price.|r"] = "|cffff0000Usando %.3gx o preço do vendedor.|r"
L["|cffff7030Buyout less than vendor price.|r"] = "|cffff7030Preço de compra menor que o preço do vendedor.|r"
L["|cffff7030Stack %d will have %d |4item:items;.|r"] = "|cffff7030Pilhas %d irão ter %d |4item:items;.|r"
L["|cffffd000Using historical data.|r"] = "|cffffd000Usando dados historicos.|r"
L["|cffffff00Scanning: %d%%|r"] = "|cffffff00Sondando: %d%%|r"
L["Accept"] = "Aceitar"
L["Add a new item to a favorites list by entering the name here."] = "Adicione um novo item na lista de favoritos colocando o nome aqui."
L["Add an Item"] = "Adicionar um item"
L["Advanced"] = "Avançado"
L["Always"] = "Sempre"
L["Amount to multiply by vendor price to get default sell price."] = "Quantidade de vezes para multiplicar pelo preço do vendedor para obter o preço padrão."
L["Approve"] = "Aprovar"
L["Auction"] = "Leilão"
L["Auction creation is already in progress."] = "A criação de leilão já está acontecendo."
L["Auction house data cleared."] = "Dados da casa de leilões limpos."
L["Auction scan skipped (control key is down)"] = "Escaneamento de leilões pulado (Tecla \"Control\" está desativada)"
L["AuctionLite"] = "AuctionLite"
L["AuctionLite - Buy"] = "AuctionLite - Comprar"
L["AuctionLite - Sell"] = "AuctionLite - Vender"
L["AuctionLite Buy"] = "AuctionLite Comprar"
L["AuctionLite Sell"] = "AuctionLite Vender"
L["AuctionLite v%s loaded!"] = "AuctionLite v%s carregado!"
L["Batch %d: %d at %s"] = "Lote %d: %d em %s"
L["Below AH"] = "Abaixo CL"
L["Bid cost for %d:"] = "Custo de oferta para %d:"
L["Bid on %dx %s (%d |4listing:listings; at %s)."] = "Oferta(s) feita(s) em %dx %s (%d |4lista:listagens; por %s)."
L["Bid Per Item"] = "Oferta Por Item"
L["Bid Price"] = "Preço da oferta"
L["Bid Total"] = "Total de Ofertas"
L["Bid Undercut"] = "Baixar preço da Oferta"
L["Bid Undercut (Fixed)"] = "Baixar Preço nas Ofertas (Fixo)"
L["Bought %dx %s (%d |4listing:listings; at %s)."] = "Comprada(s) %dx %s (%d |4llista:listagens; por %s)."
L["Buy Tab"] = "Aba de Compras"
L["Buyout cannot be less than starting bid."] = "O Preço de Compra não pode ser menor que a oferta inicial."
L["Buyout cost for %d:"] = "Preço de compra para %d:"
L["Buyout Per Item"] = "Comprar Por Item"
L["Buyout Price"] = "Preço de Compra"
L["Buyout Total"] = "Total de Compra"
L["Buyout Undercut"] = "Baixar preço da Compra"
L["Buyout Undercut (Fixed)"] = "Baixar do Preço de Compra (Fixo)"
L["Cancel"] = "Cancelar"
L["Cancel All"] = "Cancelar tudo"
L["Cancel All Auctions"] = "Cancelar todas os leilões"
L["Cancel Unbid"] = "Cancelar leilões sem ofertas"
L["Cancel Undercut Auctions"] = "Cancelar leilões abaixo do menor preço"
L["CANCEL_CONFIRM_TEXT"] = "Alguns de seus leilões tem lances. Você deseja cancelar todos os leilões, cancelar somente os que não possuem leilão, ou não fazer nada?"
L["CANCEL_NOTE"] = [=[O AuctionLite pode cancelar somente um item por clique devido as restrições da Blizzard, somente um de seus leilões foram cancelados.

Para contornar este problema, você pode continuar clicando no botão "Cancelar" até que todos os leilões desejados sejam cancelados .]=]
L["CANCEL_TOOLTIP"] = [=[|cffffffffClick:|r Cancela todos os leilões
|cffffffffCtrl-Click:|r Cancela todos os leilões abaixo do menor preço]=]
L["Cancelled %d |4listing:listings; of %s."] = "Cancelado %d |4listgem:listagens; de %s."
L["Cancelled %d listings of %s"] = "Cancelada(s) %d listagens de %s"
L["Choose a favorites list to edit."] = "Escolha uma lista de favoritos para editar."
L["Choose which tab is selected when opening the auction house."] = "Escolher qual aba será selecionada quando abrir a casa de leilões."
L["Clear All"] = "Limpar tudo"
L["Clear all auction house price data."] = "Limpar todos os dados de preços da casa de leilões."
L["Clear All Data"] = "Limpar todos os dados"
L["CLEAR_DATA_WARNING"] = "Você realmente deseja deletar todos os dados de preços da casa de leilões obtidos pelo AuctionLite?"
L["Competing Auctions"] = "Leilões Concorrentes"
L["Configure"] = "Configurar"
L["Configure AuctionLite"] = "Configurar o AuctionLite"
L["Consider resale value of excess items when filling an order on the \"Buy\" tab."] = "Considerar valor de revenda de itens em excesso quando completando uma compra na aba de \"Compra\"."
L["Consider Resale Value When Buying"] = "Considerar Valor de Revenda Quando Comprando"
L["Create a new favorites list."] = "Criar uma nova lista de favoritos."
L["Created %d |4auction:auctions; of %s x%d (%s total)."] = "Criado %d |4leilão:leilões; de %s x%d (%s no total)."
L["Created %d |4auction:auctions; of %s x%d."] = "Criado(s) %d |4leilão:leilões; de %s x%d."
L["Current: %s (%.2fx historical)"] = "Atual: %s (%.2fx histórico)"
L["Current: %s (%.2fx historical, %.2fx vendor)"] = "Atual: %s (%.2fx histórico, %.2fx vendedor)"
L["Current: %s (%.2fx vendor)"] = "Atual: %s (%.2fx vendedor)"
L["Deals must be below the historical price by this much gold."] = "Os negócios devem estar abaixo do preço histórico por este tanto de ouro."
L["Deals must be below the historical price by this percentage."] = "Os negócios devem estar abaixo do preço histórico por esta porcentagem."
L["Default"] = "Padrão"
L["Default Number of Stacks"] = "Número Padrão de Pilhas"
L["Default Stack Size"] = "Número padrão do tamanho das pilhas"
L["Delete"] = "Deletar"
L["Delete the selected favorites list."] = "Deletar a lista de favoritos selecionada."
L["Disable"] = "Desabilitar"
L["Disenchant"] = "Desencantar"
L["Do it!"] = "Faça!"
L["Do Nothing"] = "Fazer nada"
L["Enable"] = "Habilitar"
L["Enter item name and click \"Search\""] = "Entre com o nome do item e clique em \"Buscar\""
L["Enter the name of the new favorites list:"] = "Escreva o nome da nova lista de favoritos:"
L["Error locating item in bags.  Please try again!"] = "Erro ao localizar o item nas bolsas. Tente novamente!"
L["Error when creating auctions."] = "Erro ao criar leilões."
L["Fast Auction Scan"] = "Escaneamento Rápido de Leilões"
L["Fast auction scan disabled."] = "Escaneamento rápido de leilões desativado."
L["Fast auction scan enabled."] = "Escaneamento rápido de leilões ativado."
L["FAST_SCAN_AD"] = [=[O escaneamento rápida de leilões do AuctionLite pode escanear toda a casa de leilões em alguns segundos

Entretanto, dependendo da sua conexão, uma sondagem rápida pode fazer com que você se desconecte do servidor. Se isso acontecer, você pode desativar a sondagem na tela de opções do AuctionLite.

Ativar o escaneamento rápido de leilões?]=]
L["Favorites"] = "Favoritos"
L["Fixed amount to undercut market value for bid prices (e.g., 1g 2s 3c)."] = "Quantidade correta para marcar preços abaixo do corte para ofertas (ex: 1o 2p 3b)."
L["Fixed amount to undercut market value for buyout prices (e.g., 1g 2s 3c)."] = "Quantidade correta para marcar preços abaixo do menor preço para preço de compra (ex: 1o 2p 3b)."
L["Full Scan"] = "Escaneamento Completo"
L["Full Stack"] = "Pilha Cheia"
L["Hide Tooltips"] = "Esconder Tooltips"
L["Historical Price"] = "Preço Histórico"
L["Historical price for %d:"] = "Preço histórico de %d:"
L["Historical: %s (%d |4listing:listings;/scan, %d |4item:items;/scan)"] = "Histórico: %s (%d |4lista:listagens;/scan, %d |4item:ítens;/scan)"
L["If Applicable"] = "Se Aplicável"
L["Invalid starting bid."] = "Oferta inicial inválida."
L["Item"] = "Item"
L["Item Summary"] = "Resumo do Item"
L["Items"] = "Ítens"
L["Last Used Tab"] = "Última aba usada"
L["Listing %d of %d"] = "Listando %d de %d"
L["Listings"] = "Listagens"
L["Market Price"] = "Preço de Mercado"
L["Max Stacks"] = "Pilhas Máx"
L["Max Stacks + Excess"] = "Pilhas Máx + Excesso"
L["Member Of"] = "Membro de"
L["Minimum Profit (Gold)"] = "Lucro Mínimo (Ouro)"
L["Minimum Profit (Pct)"] = "Lucro Mínimo (Pct)"
L["Mouse Cursor"] = "Cursor do mouse"
L["Name"] = "Nome"
L["Net cost for %d:"] = "Custo líquido para %d:"
L["Never"] = "Nunca"
L["New..."] = "Novo..."
L["No current auctions"] = "Nenhum leilão no momento"
L["No deals found"] = "Nenhuma oferta encontrada"
L["No items found"] = "Nenhum item encontrado."
L["Not enough cash for deposit."] = "Sem dinheiro suficiente para depósito."
L["Not enough items available."] = "Sem ítens suficientes."
L["Note: %d |4listing:listings; of %d |4item was:items were; not purchased."] = "Nota: %d |4lista:listagens; de %d |4item não foi:ítens não foram; compradas."
L["Number of Items"] = "Número de ítens"
L["Number of Items |cff808080(max %d)|r"] = "Número de itens |cff808080(máx %d)|r"
L["Number of stacks suggested when an item is first placed in the \"Sell\" tab."] = "Número de pilhas sugeridas quando um item é colocado pela primeira vez na aba \"Vender\""
L["On the summary view, show how many listings/items are yours."] = "No sumário, mostrar quantas listagens/itens são seus"
L["One Item"] = "Um Item"
L["One Stack"] = "Uma Pilha"
L["Open All Bags at AH"] = "Abrir Todas Bolsas na CL"
L["Open all your bags when you visit the auction house."] = "Abre todas as suas bolsas quando você visita a casa de leilões."
L["Open configuration dialog"] = "Abrir diálogo de configuração"
L["per item"] = "por item"
L["per stack"] = "por pilha"
L["Percent to undercut market value for bid prices (0-100)."] = "Porcentagem para rebaixar os preços de mercado para ofertas (0-100)."
L["Percent to undercut market value for buyout prices (0-100)."] = "Porcentagem para rebaixar os preços de mercado para compras (0-100)."
L["Placement of tooltips in \"Buy\" and \"Sell\" tabs."] = "Localização da tooltip nas abas \"Comprar\" e \"Vender\"."
L["Potential Profit"] = "Lucro Potencial"
L["Pricing Method"] = "Método de Preço"
L["Print Detailed Price Data"] = "Mostrar Dados Detalhados de Preço"
L["Print detailed price data when selling an item."] = "Mostra os dados de preço detalhadamente quando vendendo um item."
L["Profiles"] = "Perfis"
L["Qty"] = "Qtd"
L["Remove Items"] = "Remover Itens"
L["Remove the selected items from the current favorites list."] = "Remover os itens selecionados desta lista de favoritos."
L["Resell %d:"] = "Revender %d:"
L["Right Side of AH"] = "Lado direito da CL"
L["Round all prices to this granularity, or zero to disable (0-1)."] = "Arredonda todos os preços para esta granularidade ou zero para desabilitar (0-1)."
L["Round Prices"] = "Preços Arredondados"
L["Save All"] = "Salvar tudo"
L["Saved Item Settings"] = "Configurações de Itens Salvos"
L["Scan complete.  Try again later to find deals!"] = "Escaneamento completo.  Tente novamente mais tarde para encontrar ofertas!"
L["Scanning..."] = "Escaneando..."
L["Scanning:"] = "Escaneando:"
L["Search"] = "Procurar"
L["Searching:"] = "Procurando:"
L["Select a Favorites List"] = "Selecione uma lista de favoritos"
L["Selected Stack Size"] = "Tamanho da Pilha Selecionado"
L["Sell Tab"] = "Aba de vendas"
--[[Translation missing --]]
--[[ L["Shift-click to search for the exact name. Normal click to perform a regular search."] = ""--]] 
L["Show auction house value in tooltips."] = "Mostrar o valor da casa de leilão nos tooltips."
L["Show Auction Value"] = "Mostrar Valor do Leilão"
L["Show Deals"] = "Mostrar Negócios"
L["Show Disenchant Value"] = "Mostrar Valor de Desencantar"
L["Show expected disenchant value in tooltips."] = "Mostrar o valor esperado de desencantamento nos tooltips."
L["Show Favorites"] = "Mostrar Favoritos"
L["Show Full Stack Price"] = "Mostrar Preço da Pilha"
L["Show full stack prices in tooltips (shift toggles on the fly)."] = "Mostrar preços inteiros de pilhas nas tooltips (Shift alterna na hora)."
L["Show How Many Listings are Mine"] = "Mostrar quantas listagens são minhas"
L["Show My Auctions"] = "Mostrar Meus Leilões"
L["Show Vendor Price"] = "Mostrar Preço de Vendedor"
L["Show vendor sell price in tooltips."] = "Mostrar preço de venda no vendedor nas tooltips."
L["Stack Count"] = "Contagem de Pilhas"
L["Stack Size"] = "Tamanho da Pilha"
L["Stack size suggested when an item is first placed in the \"Sell\" tab."] = "Tamanho da pilha sugerido quando um item é colocado pela primeira vez na aba \"Vender\""
L["Stack size too large."] = "Tamanho da pilha muito grande."
L["stacks of"] = "pilhas de"
L["Start Tab"] = "Aba Inicial"
L["Store Price Data"] = "Dados de Preços Armazenados"
L["Store price data for all items seen (disable to save memory)."] = "Armazenar dados de preços para todos os itens vistos (desative para ganhar memória)."
L["Time Elapsed:"] = "Tempo Decorrido:"
L["Time Remaining:"] = "Tempo Restante:"
L["Tooltip Location"] = "Localização da tooltip"
L["Tooltips"] = "Tooltips"
L["Use Coin Icons in Tooltips"] = "Usar ícones de moedas na tooltip"
L["Use fast method for full scans (may cause disconnects)."] = "Usar método rápido para sondagens completas (pode causar desconexões)."
L["Uses the standard gold/silver/copper icons in tooltips."] = "Usar os ícones padrão de ouro/prata/bronze nas tooltips."
L["Vendor"] = "Vendedor"
L["Vendor Multiplier"] = "Multiplicação do Preço no Vendedor"
L["Vendor: %s"] = "Vendedor: %s"
L["VENDOR_WARNING"] = "Seu preço de compra está abaixo do preço do vendedor.  Você ainda deseja criar esse leilão?"
L["Window Corner"] = "Canto da Janela"

