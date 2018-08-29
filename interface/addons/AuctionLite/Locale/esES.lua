local L = LibStub("AceLocale-3.0"):NewLocale("AuctionLite", "esES");
if not L then return end

L["%dh"] = "%dh"
L["(none set)"] = "(no especificado)"
L["|cff00ff00Scanned %d listings.|r"] = "|cff00ff00Escaneados %d listados.|r"
L["|cff00ff00Using previous price.|r"] = "|cff00ff00Usando precio anterior.|r"
L["|cff808080(per item)|r"] = "|cff808080(por objeto)|r"
L["|cff808080(per stack)|r"] = "|cff808080(por montón)|r"
L["|cff8080ffData for %s x%d|r"] = "|cff8080ffDatos para %s x%d|r"
L["|cffff0000[Error]|r Insufficient funds."] = "|cffff0000[Error]|r Fondos insuficientes."
L["|cffff0000[Warning]|r Skipping your own auctions.  You might want to cancel them instead."] = "|cffff0000[Atención]|r Evitando sus propias subastas. Podría querer cancelarla."
L["|cffff0000Buyout less than bid.|r"] = "|cffff0000Precio de compra menor que el de puja.|r"
L["|cffff0000Buyout less than vendor price.|r"] = "|cffff0000Precio de compra menor que el precio de vendedor.|r"
L["|cffff0000Invalid stack size/count.|r"] = "|cffff0000Tamaño de montón invalido.|r"
L["|cffff0000No bid price set.|r"] = "|cffff0000No se ha puesto precio de puja.|r"
L["|cffff0000Not enough cash for deposit.|r"] = "|cffff0000No hay suficiente dinero para el depósito.|r"
L["|cffff0000Not enough items available.|r"] = "|cffff0000No hay suficientes objetos disponibles.|r"
L["|cffff0000Stack size too large.|r"] = "|cffff0000Tamaño de montón demasiado grande.|r"
L["|cffff0000Using %.3gx vendor price.|r"] = "|cffff0000Usando %.3gx precio de vendedor.|r"
L["|cffff7030Buyout less than vendor price.|r"] = "|cffff7030Precio de compra menos que precio de vendedor.|r"
L["|cffff7030Stack %d will have %d |4item:items;.|r"] = "|cffff7030Montón %d tendrá %d |4objeto:objetos;.|r"
L["|cffffd000Using historical data.|r"] = "|cffffd000Usando datos históricos.|r"
L["|cffffff00Scanning: %d%%|r"] = "|cffffff00Escaneando: %d%%|r"
L["Accept"] = "Aceptar"
L["Add a new item to a favorites list by entering the name here."] = "Añadir un nuevo objeto a una lista de favoritos introduciendo el nombre aquí."
L["Add an Item"] = "Añadir un objeto"
L["Advanced"] = "Avanzado"
L["Always"] = "Siempre"
L["Amount to multiply by vendor price to get default sell price."] = "Cantidad por la que multiplicar el precio del vendedor para obtener el precio estándar de venta"
L["Approve"] = "Aprobar"
L["Auction"] = "Subasta"
L["Auction creation is already in progress."] = "La creación de subastas está en proceso"
L["Auction house data cleared."] = "Datos de la Casa de Subastas borrados"
L["Auction scan skipped (control key is down)"] = "Escaneo de subastas cancelado (Ctrl apretada)"
L["AuctionLite"] = "AuctionLite"
L["AuctionLite - Buy"] = "AuctionLite - Compra"
L["AuctionLite - Sell"] = "AuctionLite - Venta"
L["AuctionLite Buy"] = "AuctionLite Compra"
L["AuctionLite Sell"] = "AuctionLite Venta"
L["AuctionLite v%s loaded!"] = "¡AuctionLite v%s cargado!"
L["Batch %d: %d at %s"] = "Proceso %d: %d en %s"
L["Below AH"] = "Por debajo de la CdS"
L["Bid cost for %d:"] = "Coste de puja para %d:"
L["Bid on %dx %s (%d |4listing:listings; at %s)."] = "Puja por %dx %s (%d |4listado:listados; en %s)."
L["Bid Per Item"] = "Puja por objeto"
L["Bid Price"] = "Precio de puja"
L["Bid Total"] = "Puja total"
L["Bid Undercut"] = "Rebaja de puja"
L["Bid Undercut (Fixed)"] = "Recorte de puja (Fijado)"
L["Bought %dx %s (%d |4listing:listings; at %s)."] = "Comprado %dx %s (%d |4listado:listados; en %s)."
L["Buy Tab"] = "Pestaña Compra"
L["Buyout cannot be less than starting bid."] = "El precio de compra no puede ser menor que el precio de puja inicial"
L["Buyout cost for %d:"] = "Coste de compra para %d:"
L["Buyout Per Item"] = "Precio de compra por objeto"
L["Buyout Price"] = "Precio de compra"
L["Buyout Total"] = "Precio de compra total"
L["Buyout Undercut"] = "Rebaja de compra"
L["Buyout Undercut (Fixed)"] = "Recorte de compra (Fijado)"
L["Cancel"] = "Cancelar"
L["Cancel All"] = "Cancelar Todo"
L["Cancel All Auctions"] = "Cancelar todas las subastas"
L["Cancel Unbid"] = "Cancelar sin pujas"
L["Cancel Undercut Auctions"] = "Cancelar subastas con reducción"
L["CANCEL_CONFIRM_TEXT"] = "Algunas de tus subastas tienen pujas realizadas. ¿Quieres cancelar todas las subastas, cancelar solo aquellas sin pujas, o no hacer nada?"
L["CANCEL_NOTE"] = [=[AuctionLite solo puede cancelar un objeto por clic debido a una restricción de Blizzard, por lo que solo una de tus subastas ha sido cancelada.

Para continuar con el proceso, puedes continuar haciendo clic en el botón "Cancelar" hasta que todas las subastas deseadas hayan sido canceladas.]=]
L["CANCEL_TOOLTIP"] = [=[|cffffffffClic:|r Cancelar todas las subastas
|cffffffffCtrl-Click:|r Cancelar todas las subastas con reducción]=]
L["Cancelled %d |4listing:listings; of %s."] = "Cancelados %d |4listado:listados; de %s."
L["Cancelled %d listings of %s"] = "Cancelado %d listados de %s"
L["Choose a favorites list to edit."] = "Elije una lista de favoritos para editarla."
L["Choose which tab is selected when opening the auction house."] = "Elige que pestaña sera seleccionada cuando abras la casa de subastas."
L["Clear All"] = "Borrar todo"
L["Clear all auction house price data."] = "Borrar todos los datos de precios de la Casa de Subastas."
L["Clear All Data"] = "Borrar Todos los Datos"
L["CLEAR_DATA_WARNING"] = "¿Quieres realmente borrar todos los datos recogidos de la casa de subastas por AuctionLite?"
L["Competing Auctions"] = "Subastas con competencia"
L["Configure"] = "Configurar"
L["Configure AuctionLite"] = "Configurar AuctionLite"
L["Consider resale value of excess items when filling an order on the \"Buy\" tab."] = "Considerar precio de reventa de los objetos sobrantes cuando se rellena una orden en la pestaña \"Compra\"."
L["Consider Resale Value When Buying"] = "Considerar Precio De Reventa Cuando Se Compra"
L["Create a new favorites list."] = "Crear una nueva lista de favoritos."
L["Created %d |4auction:auctions; of %s x%d (%s total)."] = "Creadas %d |4subasta:subastas; de %s x%d (%s total)."
L["Created %d |4auction:auctions; of %s x%d."] = "Creado %d |4subasta:subastas; de %s x%d."
L["Current: %s (%.2fx historical)"] = "Actual: %s (%.2fx histórico)"
L["Current: %s (%.2fx historical, %.2fx vendor)"] = "Actual: %s (%.2fx histórico, %.2fx vendedor)"
L["Current: %s (%.2fx vendor)"] = "Actual: %s (%.2fx vendedor)"
L["Deals must be below the historical price by this much gold."] = "Las ventas deben estar por debajo del precio histórico por esta cantidad de oro"
L["Deals must be below the historical price by this percentage."] = "Las ventas deben estar por debajo del precio histórico por este porcentaje"
L["Default"] = "Defecto"
L["Default Number of Stacks"] = "Número de montones por defecto"
L["Default Stack Size"] = "Tamaño de montón por defecto"
L["Delete"] = "Borrar"
L["Delete the selected favorites list."] = "Borrar la lista de favoritos seleccionada."
L["Disable"] = "Deshabilitar"
L["Disenchant"] = "Desencantar"
L["Do it!"] = "¡Hazlo!"
L["Do Nothing"] = "Nada"
L["Enable"] = "Habilitar"
L["Enter item name and click \"Search\""] = "Introduzca el nombre del objeto y haga clic en \"Búsqueda\""
L["Enter the name of the new favorites list:"] = "Introduce el nombre para la lista de favoritos nueva:"
L["Error locating item in bags.  Please try again!"] = "Error localizando el objeto en las bolsas. ¡Por favor, inténtelo de nuevo!"
L["Error when creating auctions."] = "Error al crear subastas"
L["Fast Auction Scan"] = "Escaneo rápido de subastas"
L["Fast auction scan disabled."] = "Escaneo rápido de subastas desactivado"
L["Fast auction scan enabled."] = "Escaneo rápido de subastas activado"
L["FAST_SCAN_AD"] = [=[El escaneo rápido de AuctionLite puede escanear la casa de subastas entera en unos pocos segundos.

Sin embargo, dependiendo de su conexión, un escaneo rápido puede desconectarle del servidor. si estos ocurriese, puede deshabilitar el escaneo rápido en la ventana de opciones de AuctionLite.

¿Activar escaneo rápido de subastas?]=]
L["Favorites"] = "Favoritos"
L["Fixed amount to undercut market value for bid prices (e.g., 1g 2s 3c)."] = "Cantidad fija a recortar en el precio de mercado para los precios de puja (p.ej., 1o 2p 3c)."
L["Fixed amount to undercut market value for buyout prices (e.g., 1g 2s 3c)."] = "Cantidad fija a recortar en el precio de mercado para los precios de compra (p.ej., 1o 2p 3c)."
L["Full Scan"] = "Escaneo completo"
L["Full Stack"] = "Montón completo"
L["Hide Tooltips"] = "Ocultar textos de ayuda"
L["Historical Price"] = "Precio histórico"
L["Historical price for %d:"] = "Precio histórico para %d:"
L["Historical: %s (%d |4listing:listings;/scan, %d |4item:items;/scan)"] = "Histórico: %s (%d |4listado:listados;/escaneo, %d |4objeto:objetos;/escaneo)"
L["If Applicable"] = "Si aplicable"
L["Invalid starting bid."] = "Precio de puja inicial invalido"
L["Item"] = "Objeto"
L["Item Summary"] = "Resumen de objeto"
L["Items"] = "Objetos"
L["Last Used Tab"] = "Última pestaña usada"
L["Listing %d of %d"] = "Listado %d de %d"
L["Listings"] = "Listados"
L["Market Price"] = "Precio de mercado"
L["Max Stacks"] = "Máximos Montones"
L["Max Stacks + Excess"] = "Máximos Montones+Sobrante"
L["Member Of"] = "Miembro De"
L["Minimum Profit (Gold)"] = "Beneficio mínimo (Oro)"
L["Minimum Profit (Pct)"] = "Beneficio mínimo (%)"
L["Mouse Cursor"] = "Puntero"
L["Name"] = "Nombre"
L["Net cost for %d:"] = "Coste neto para %d"
L["Never"] = "Nunca"
L["New..."] = "Nuevo..."
L["No current auctions"] = "Sin subastas en estos momentos"
L["No deals found"] = "No se encontraron ofertas"
L["No items found"] = "No se han encontrado objetos"
L["Not enough cash for deposit."] = "No hay suficiente dinero para el depósito"
L["Not enough items available."] = "No hay suficientes objetos disponibles"
L["Note: %d |4listing:listings; of %d |4item was:items were; not purchased."] = "Nota: %d |4listado:listados; de %d |4objeto fue:objetos fueron; no adquirido."
L["Number of Items"] = "Número de objetos"
L["Number of Items |cff808080(max %d)|r"] = "Número de objetos |cff808080(max %d)|r"
L["Number of stacks suggested when an item is first placed in the \"Sell\" tab."] = "Número de montones sugeridos cuando un objeto se puso por primera vez en la pestaña \"Venta\""
L["On the summary view, show how many listings/items are yours."] = "En la vista de resumen, mostrar cuantos listados/objetos son tuyos."
L["One Item"] = "Un Objeto"
L["One Stack"] = "Un Montón"
L["Open All Bags at AH"] = "Abrir todas las bolsas en la casa de subastas"
L["Open all your bags when you visit the auction house."] = "Abre todas las bolsas cuando visites la casa de subastas."
L["Open configuration dialog"] = "Abrir diálogo de configuración"
L["per item"] = "por objeto"
L["per stack"] = "por montón"
L["Percent to undercut market value for bid prices (0-100)."] = "Porcentaje de reducción al precio de mercado para las pujas (0-100)"
L["Percent to undercut market value for buyout prices (0-100)."] = "Porcentaje de reducción al precio de mercado para las compras"
L["Placement of tooltips in \"Buy\" and \"Sell\" tabs."] = "Posicionamiento de los textos de ayuda en las pestañas de \"Compra\" y \"Venta\""
L["Potential Profit"] = "Beneficio potencial"
L["Pricing Method"] = "Método de valoración"
L["Print Detailed Price Data"] = "Mostrar datos detallados de los precios"
L["Print detailed price data when selling an item."] = "Mostrar precio detallado cuando se venda un objeto"
L["Profiles"] = "Perfiles"
L["Qty"] = "Ctdad."
L["Remove Items"] = "Eliminar objetos"
L["Remove the selected items from the current favorites list."] = "Eliminar los objetos seleccionados de la lista de favoritos seleccionada."
L["Resell %d:"] = "Revender %d:"
L["Right Side of AH"] = "Lado derechos de la CdS"
L["Round all prices to this granularity, or zero to disable (0-1)."] = "Redondear todos los precios hasta su granularidad, o cero si está desactivado (0-1)"
L["Round Prices"] = "Redondear precios"
L["Save All"] = "Guardar Todo"
L["Saved Item Settings"] = "Guardada configuración de objetos"
L["Scan complete.  Try again later to find deals!"] = "Escaneo completo. ¡Pruebe de nuevo para encontrar ofertas!"
L["Scanning..."] = "Escaneando..."
L["Scanning:"] = "Escaneando:"
L["Search"] = "Buscar"
L["Searching:"] = "Buscando:"
L["Select a Favorites List"] = "Seleccionar una lista de favoritos"
L["Selected Stack Size"] = "Tamaño Seleccionado de Montón"
L["Sell Tab"] = "Pestaña Venta"
--[[Translation missing --]]
--[[ L["Shift-click to search for the exact name. Normal click to perform a regular search."] = ""--]] 
L["Show auction house value in tooltips."] = "Mostrar precio de subasta en los textos de ayuda"
L["Show Auction Value"] = "Mostrar valor de subasta"
L["Show Deals"] = "Mostrar oportunidades"
L["Show Disenchant Value"] = "Mostrar valor de desencantado"
L["Show expected disenchant value in tooltips."] = "Mostrar el valor esperado de desencantado en los textos de ayuda"
L["Show Favorites"] = "Mostrar favoritos"
L["Show Full Stack Price"] = "Mostrar precio del montón completo"
L["Show full stack prices in tooltips (shift toggles on the fly)."] = "Mostrar precio del montón completo en textos de ayuda (mays cambia esto al momento)"
L["Show How Many Listings are Mine"] = "Mostrar Cuantos Listados son Míos"
L["Show My Auctions"] = "Mostrar mis subastas"
L["Show Vendor Price"] = "Mostrar precio de vendedor"
L["Show vendor sell price in tooltips."] = "Mostrar precio de venta de vendedor en los textos de ayuda"
L["Stack Count"] = "Cuenta de montones"
L["Stack Size"] = "Tamaño de montón"
L["Stack size suggested when an item is first placed in the \"Sell\" tab."] = "Tamaño de montón sugerido cuando un objeto se puso por primera vez en la pestaña \"Venta\""
L["Stack size too large."] = "Tamaño de montón demasiado grande"
L["stacks of"] = "montones de"
L["Start Tab"] = "Pestaña Inicio"
L["Store Price Data"] = "Almacenar Datos de Precios"
L["Store price data for all items seen (disable to save memory)."] = "Almacenar datos de precios para todos los objetos vistos (deshabilitar para reducir uso de memoria)."
L["Time Elapsed:"] = "Tiempo pasado:"
L["Time Remaining:"] = "Tiempo restante:"
L["Tooltip Location"] = "Posición de texto de ayuda"
L["Tooltips"] = "Textos de ayuda"
L["Use Coin Icons in Tooltips"] = "Usar iconos de moneda en los textos de ayuda"
L["Use fast method for full scans (may cause disconnects)."] = "Usar el método rápido para escaneos completos (puede producir desconexiones)"
L["Uses the standard gold/silver/copper icons in tooltips."] = "Usa el estandar de iconos oro/plata/cobre en los textos de ayuda"
L["Vendor"] = "Vendedor"
L["Vendor Multiplier"] = "Multiplicador de vendedor"
L["Vendor: %s"] = "Vendedor: %s"
L["VENDOR_WARNING"] = "Tu precio de compra es inferior al precio de vendedor. ¿Sigues queriendo crear esta subasta?"
L["Window Corner"] = "Esquina de la ventana"
