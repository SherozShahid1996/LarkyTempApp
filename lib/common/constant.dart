import 'package:url_launcher/url_launcher.dart';

enum SocialMedia { facebook, insta, twitter, linkedIn }

enum FooterPages { pg1, pg2, pg3, pg4, pg5 }

enum ApiUrl { getRestaurant, favoriteEdit }

const serviceBaseUrl = 'https://api.larky.ch/Customer/api/';

final urls = {
  SocialMedia.facebook: 'https://www.facebook.com/LarkyGroup',
  SocialMedia.insta: 'https://www.instagram.com/larkygroup/',
  SocialMedia.twitter: 'https://twitter.com/larkygroup',
  SocialMedia.linkedIn: 'https://www.linkedin.com/company/larkygroup/',
  ApiUrl.getRestaurant: '${serviceBaseUrl}TempRestaurant/GetTempRestaurantList',
  ApiUrl.favoriteEdit:
      '${serviceBaseUrl}TempRestaurant/AddOrRemoveTempResFavorite',
};

Future<void> urlLaunch(String url) async {
  Uri uri = Uri.parse(url);
  await canLaunchUrl(uri)
      ? await launchUrl(uri)
      : throw 'Could not launch $uri';
}

const pg1 = """
<section class="terms-content AGBKunde">
    <div class="container">
        <h1>Allgemeine Geschäftsbedingungen (AGB) für Kunden</h1>
        <p>Die vorliegenden "Allgemeinen Geschäftsbedingungen für Kunden" sind anwendbar auf die Beziehungen zwischen der LARKY AG und den Kunden. Restaurants seien auf die "Allgemeinen Geschäftsbedingungen für Restaurants" verwiesen.</p>
        <h5>1. Begriffsbestimmungen</h5>
        <ul>
            <li><p><strong>Angebot:</strong> Die vom Restaurant angebotene Reihe von Produkten und Dienstleistungen, die vom Kunden über die Plattform bestellt werden können.</p></li>
            <li><p><strong>Bestellung:</strong> Eine Bestellung des Kunden bei dem Restaurant über die Plattform in Bezug auf das vom Kunden ausgewählte Angebot.</p></li>
            <li><p><strong>Kunde:</strong> Eine natürliche oder juristische Person, die über die Plattform eine Bestellung im Restaurant einreicht.</p></li>
            <li><p><strong>Plattform:</strong> Die Website(s), Apps und Tools der Larky AG und mit Larky AG verbundene Unternehmen und Geschäftspartner, auf deren Website der Service verfügbar gemacht wird.</p></li>
            <li><p><strong>Restaurant:</strong> Ein Unternehmen, das Mahlzeiten, Getränke und damit verwandte Produkte zubereitet und verkauft, und das die Plattform zum Abschluss der Verträge sowie zu deren Bezahlung nutzt.</p></li>
            <li><p><strong>Restaurantinformationen:</strong> Die Informationen zum Restaurant, unter anderem in Bezug auf das Unternehmen und dessen Kontaktangaben, allgemeine Informationen, die Produktpalette (Mahlzeiten, Beilagen, Optionen und Getränke), Preise für jedes einzelne Produkt (einschliesslich Mehrwertsteuer), Firmenlogo, Grafiken, Liefergebiet (einschliesslich Angabe der Postleitzahlen), Lieferkosten und Mindestbestellmengen.</p></li>
            <li><p><strong>Service:</strong> Die kommerziellen Dienstleistungen und/oder Tätigkeiten, die dem Kunde von Larky AG angeboten werden, einschliesslich der Veröffentlichung des Angebots, der Ermöglichung des Vertragsabschlusses und der Übermittlung von Bestellungen an das betreffende Restaurant.</p></li>
            <li><p><strong>Vertrag:</strong> Eine Vereinbarung zwischen dem Kunden und dem Restaurant über die Plattform, bezüglich einer Bestellung inklusive Lieferung oder Abholung der Bestellung.</p></li>
            <li><p><strong>Larky AG:</strong> Ist der Name der Juristischen Person, welche diese Plattform be- und vertreibt.</p></li>
            <li><p><strong>Trinkgeld:</strong> Ein vom Kunden freiwillig gezahlter Betrag, der für den Zusteller der Bestellung bestimmt ist.</p></li>
        </ul>
        <h5>2. Identität von Larky AG</h5>
        <ul>
            <li>Larky AG, Neugasse 6, 6300 Zug, Schweiz</li>
            <li><a href="mailto:service@larky.ch"><span>service@larky.ch</span></a></li>
        </ul>
        <h5>3. Anwendbarkeit</h5>
        <ul>
            <li><p>Die vorliegenden Allgemeinen Geschäftsbedingungen für Kunden sind nur auf den Service anwendbar. Larky AG ist nicht für das Angebot verantwortlich. Gegebenenfalls gelten die Allgemeinen Geschäftsbedingungen des Restaurants zusätzlich für das Angebot.</p></li>
            <li><p>Durch die Aufgabe einer Bestellung schliesst der Kunde direkt einen Vertrag mit dem Restaurant über die Lieferung des vom Kunden ausgewählten Angebots ab. Der Kunde ist an die Bestellung gebunden und hat keinen Anspruch auf eine Rückerstattung, ausser im Falle einer Stornierung durch das Restaurant gemäss Artikel 6.</p></li>
        </ul>
        <h5>4. Haftung</h5>
        <ul>
            <li><p>Das auf der Plattform veröffentlichte Angebot ist im Namen des jeweiligen Restaurants, ausgehend von den bereitgestellten Restaurantinformationen, veröffentlicht. Larky AG übernimmt keinerlei Verantwortung oder Haftung für den Inhalt des Angebots und der Restaurantinformationen auf der Plattform. Das Restaurant verwendet gegebenenfalls Zutaten und Zusatzstoffe für Speisen und Getränke, die Allergien und Unverträglichkeiten auslösen können. Wenn Sie allergisch auf Lebensmittel reagieren, raten wir Ihnen, sich telefonisch mit dem Restaurant in Verbindung zu setzen, um sich über aktuelle Allergene zu informieren, bevor Sie eine Bestellung aufgeben.</p></li>
            <li><p>Larky AG präsentiert alle Restaurantinformationen auf eine Weise, die dem Kunden verdeutlicht, welches seine Rechte und Pflichten sind, nachdem er das Angebot angenommen hat.</p></li>
            <li><p>Es obliegt nicht der Larky AG oder dessen Erfüllungsgehilfen, die Erreichbarkeit der Plattform sicherzustellen. Aus diesem Grund haftet Larky AG nicht für die Erreichbarkeit der Plattform.</p></li>
        </ul>
        <h5>5. Der Vertrag</h5>
        <ul>
            <li><p>Der Vertrag gilt ab dem Zeitpunkt, an dem der Kunde die Bestellung aufgibt, indem er während des Bestellvorgangs auf der Plattform die Schaltfläche "Bestellen absenden" anklickt.</p></li>
            <li><p>Nach Eingang der Bestellung wird Larky AG die Bestellung dem Kunden elektronisch bestätigen.</p></li>
            <li><p>Der Vertrag kann vom Restaurant nur dann ausgeführt werden, wenn der Kunde bei der Bestellung korrekte und vollständige Kontakt- und Adressinformationen zur Verfügung stellt. Der Kunde ist verpflichtet, unverzüglich alle Ungenauigkeiten in den Zahlungsdaten zu melden, die an Larky AG oder das Restaurant übermittelt oder weitergegeben worden sind.</p></li>
            <li><p>In Bezug auf die Information betreffend den Status seiner Bestellung, muss der Kunde telefonisch oder per E-Mail (wie bei der Bestellung angegeben) für das Restaurant und Larky AG erreichbar sein.</p></li>
            <li><p>Falls der Kunde beschliesst, die Bestellung liefern zu lassen, sollte er an der vom Kunden angegebenen Lieferadresse anwesend sein, um die Lieferung der Bestellung entgegenzunehmen.</p></li>
            <li><p>Wenn Larky AG die Bestellung im Namen des Restaurants liefert, kann Larky AG dem Kunden Lieferkosten in Rechnung stellen. Die aktuellen Lieferkosten werden auf der Plattform angegeben, bevor ein Kunde eine Bestellung aufgibt. Eine Quittung für die Lieferkosten kann bei Larky AG angefordert werden.</p></li>
            <li><p>Falls der Kunde beschliesst, die Bestellung abzuholen, sollte er zum gewählten Zeitpunkt am Abholort des Restaurants anwesend sein, wie in der Bestätigungs-E-Mail oder auf der Larky-Webseite angegeben.</p></li>
            <li><p>Bei der Zustellung der Bestellung kann das Restaurant um eine Identifizierung bitten, wenn die Bestellung alkoholische Produkte oder andere Produkte mit einer Altersgrenze enthält. Kann sich der Kunde nicht angemessen ausweisen oder erfüllt er nicht die Mindestalteranforderungen, kann das Restaurant die Lieferung der entsprechenden Produkte an den Kunden verweigern. In diesem Fall können Stornokosten berechnet werden.</p></li>
            <li><p>Larky AG übernimmt keinerlei Haftung in Bezug auf die Ausführung des Vertrags.</p></li>
            <li> <p>Nach der Bestellung kann der Kunde nach eigenem Ermessen entscheiden, einem Zusteller über die verfügbaren Zahlungsmethoden ein Trinkgeld zu geben.</p></li>
            <li> <p>Das Trinkgeld ist für die Zusteller bestimmt und kann nicht als Zahlung für Dienstleistungen von Larky AG angesehen werden. Larky AG tritt dabei nur als Treuhänder und Überweiser der Trinkgeldbeträge auf.</p></li>
            <li> <p>Larky AG überweist das Trinkgeld an die Zusteller, falls diese direkt über Larky AG beauftragt werden. Falls ein Zusteller nicht über Larky AG, sondern direkt durch das Restaurant beauftragt wird, überweist Larky AG das Trinkgeld an das Restaurant und verpflichtet das Restaurant, das Trinkgeld an den Zusteller auszuzahlen. Larky AG kann keine Garantie oder Verantwortung für die Übertragung des Trinkgeldes vom Restaurant an den Zusteller übernehmen.</p></li>
            <li> <p>Wenn der Kunde eine Bestätigung über die Platzierung des Trinkgeldes erhalten hat, kann das Trinkgeld nicht mehr zurückerstattet oder zurückgegeben werden.</p></li>
        </ul>
        <h5>6. Auflösung des Vertrags und Stornierung der Bestellung</h5>
        <ul>
            <li><p>Angesichts der Verderblichkeit des Angebots ist es dem Kunden nicht gestattet, den Vertrag aufzulösen. Bestellungen gegenüber der Larky AG können nicht vom Kunden aufgelöst werden. Eine Stornierung der Bestellung gegenüber dem Restaurant ist für den Kunden nur dann möglich, wenn das Restaurant ausdrücklich angibt, dass eine Stornierung der Bestellung durch den Kunden möglich ist.</p></li>
            <li><p>Das Restaurant ist berechtigt, die Bestellung zu stornieren, z.B. wenn das Angebot nicht mehr verfügbar ist, wenn der Kunde eine falsche oder nicht funktionierende Telefonnummer oder andere Kontaktinformationen angegeben hat oder wenn höhere Gewalt vorliegt. Larky AG ist berechtigt, alle (künftigen) Bestellungen vom Kunden abzulehnen, sollten entsprechende Gründe vorliegen.</p></li>
            <li><p>Wenn der Kunde eine falsche Bestellung (z.B. in dem er falsche Kontaktinformationen angibt, indem er nicht bezahlt oder nicht am Lieferungs- oder Abholungsort anwesend ist, um den Auftrag zu erhalten) aufgibt oder anderweitig seinen Verpflichtungen gemäss dem Vertrag nicht nachkommt, ist Larky AG berechtigt, zukünftige Bestellungen von diesem Kunden abzulehnen.</p></li>
            <li><p>Larky AG ist berechtigt, Bestellungen abzulehnen und Verträge im Namen des Restaurants aufzulösen, wenn es angemessene Zweifel bezüglich der Richtigkeit oder Echtheit der Bestellung oder der Kontaktinformationen gibt oder falls das Restaurant keinen Vertrag mit dem Kunden schliessen möchte. Falls der Kunde Bestellungen aufgibt, die nachweislich falsch oder betrügerisch sind, ist Larky AG berechtigt, bei der Polizei Anzeige zu erstatten. Wenn der Kunde Bestellungen aufgibt, die falsch oder betrügerisch erscheinen, kann Larky AG dies der Polizei melden.</p></li>
        </ul>
        <h5>7. Zahlung</h5>
        <ul>
            <li><p>Beschwerden des Kunden über das Angebot, die Bestellung oder die Erfüllung des Vertrags sind beim Restaurant einzureichen. Die alleinige Verantwortung für das Angebot des Restaurants und die Erfüllung der Vereinbarung liegt beim Restaurant. Larky AG übernimmt nur eine Vermittlerrolle.</p></li>
            <li><p>Nach Massgabe der Bestimmungen aus Artikel 6 dieser Allgemeinen Geschäftsbedingungen für Kunden ist die (teilweise) Rückerstattung einer Online-Zahlung nur dann möglich, wenn die Bestellung nicht (vollständig) geliefert werden kann. Die Rückerstattung erfolgt immer auf das Konto, von dem aus die Zahlung vorgenommen wurde. Abhängig von der vom Kunden verwendeten Zahlungsmethode dauert die Bearbeitung der Erstattung maximal 10 Werktage.</p></li>
            <li><p>Das Restaurant hat Larky AG bevollmächtigt, die Online-Zahlung des Kunden im Namen des Restaurants anzunehmen.</p></li>
        </ul>
        <h5>8. Beilegung von Beschwerden</h5>
        <ul>
            <li> <p>Kundeseitige Beschwerden betreffend das Angebot, der Bestellung oder der Ausführung des Vertrags werden dem Restaurant gemeldet. Im Falle von Beschwerden kann Larky AG nur eine schlichtende Rolle einnehmen.</p></li>
            <li> <p>Falls der Kunde eine Beschwerde bezüglich des Services hat, muss diese Beschwerde dem Kundendienst von Larky AG mittels des Kontaktformulars, per E-Mail oder auf dem normalen Postweg, an die in Artikel 2 der vorliegenden Allgemeinen Geschäftsbedingungen für Kunden angegebene Kontaktadresse, gemeldet werden.</p></li>
            <li> <p>Sobald Larky AG die Beschwerde erhalten hat, wird Larky AG schnellstmöglich mit einer Empfangsbestätigung antworten. Larky AG ist bestrebt, die Beschwerde so bald wie möglich zu bearbeiten.</p></li>
            <li> <p>Beschwerden, wie sie in den Abschnitten 1 und 2 dieses Artikels beschrieben sind, müssen dem Restaurant oder Larky AG innerhalb einer angemessenen Frist, nachdem der Kunde die Mängel festgestellt hat, gemeldet und vollständig und deutlich beschrieben werden.</p></li>
        </ul>
        <h5>9. Newsletter</h5>
        <ul>
            <li><p>Bei der Aufgabe der Bestellung kann der Kunde den Newsletter oder Pushnachrichten abonnieren. Der Kunde kann diesen Newsletter abbestellen, über den Link in der E-Mail oder indem er den Kundendienst anhand der Kontaktangaben, die unter Artikel 2 dieser Allgemeinen Geschäftsbedingungen für Kunden angeführt sind, kontaktiert.</p></li>
        </ul>
        <h5>10. Einsichtnahme und Berichtigung der gespeicherten personenbezogenen Daten</h5>
        <ul>
            <li><p>Larky AG verarbeitet personenbezogene Daten in Bezug auf den Kunden. Die Verarbeitung personenbezogener Daten unterliegt den Bestimmungen der Datenschutzerklärung.</p></li>
        </ul>
        <p>Zug, 01.12.2020</p>
    </div>
</section>

""";

const pg2 = """
<div class="fp-wrap">
        <div class="position-sticky"><a href="javascript:;" class="popup-close"><i class="fa fa-times" aria-hidden="true"></i></a></div>
<section class="terms-content">
    <div class="container">
        <h1>Datenschutzerklärung für Kunden</h1>
        <h6>Datenschutzerklärung für Kunden</h6>
        <p>Diese Datenschutzerklärung für Kunden gilt für die Verarbeitung personenbezogener Daten von Kunden, die eine Bestellung aufgeben oder die Plattformen von larky.ch besuchen. Der Datencontroller für die Verarbeitung ist Larky AG. Dieser ist für die Verarbeitung dieser personenbezogenen Daten verantwortlich, respektiert Ihre Privatsphäre in vollem Umfang, und befolgt die Datenschutz-Grundverordnung (DSGVO) bei der Verarbeitung personenbezogener Daten.</p>
        <h6>Welche personenbezogenen Daten verarbeiten wir und warum?</h6>
        <p>Larky AG verarbeitet Ihre personenbezogenen Daten, weil Sie unsere Dienste nutzen. Wir verwenden die folgenden personenbezogenen Daten für die folgenden Zwecke.</p>
        <h5>1. Bestellprozess</h5>
        <ul>
            <li>Wir verarbeiten die personenbezogenen Daten, die Sie uns übermitteln, wenn Sie Ihre Bestellung aufgeben. Diese personenbezogenen Daten sind erforderlich, um Ihre Bestellung auszuführen, Ihre Bestellung zu bestätigen und Ihre Bestellung, die Zahlung sowie eine mögliche Erstattung zu bewerten. Die Rechtsgrundlage für diese Verarbeitung von personenbezogenen Daten besteht darin, dass sie für die Erfüllung eines Vertrags, wie in der DSGVO definiert, erforderlich ist. Wir verarbeiten die folgenden personenbezogenen Daten im Bestellprozess:</li>
            <li>
                <ul>
                    <li>Name</li>
                    <li>Daten zur Anschrift</li>
                    <li>Kontaktdaten</li>
                    <li>Bestellungsdaten</li>
                    <li>Zahlungsdaten</li>
                    <li>Kommentare (sofern zutreffend)</li>
                </ul>
            </li>
        </ul>
        <h5>2. Restaurantbewertungen</h5>
        <ul>
            <li>Neben den oben genannten Verarbeitungsaktivitäten verarbeiten wir von Ihnen vorgelegte personenbezogene Daten, wenn Sie eine Restaurantbewertung übermitteln. Die Rechtsgrundlage für diese Verarbeitung von personenbezogenen Daten besteht darin, dass Sie Ihre Einwilligung für diese Verarbeitung erklärt haben (indem Sie eine Restaurantbewertung einstellen), wie in der DSGVO definiert. Sie können Ihre Einwilligung widerrufen, indem Sie sich unter <a href="mailto:service@larky.ch">service@larky.ch</a> mit uns in Verbindung setzen. Wir verarbeiten die folgenden personenbezogenen Daten, wenn Sie eine Restaurantbewertung einstellen:</li>
            <li>
                <ul>
                    <li>Name (sofern übermittelt)</li>
                    <li>Bewertung, einschliesslich Kommentare (sofern zutreffend)</li>
                </ul>
            </li>
        </ul>
        <h5>3. Kundendienst</h5>
        <ul>
            <li>Wenn Sie sich mit unserem Kundendienst in Verbindung setzen, verwenden wir die von Ihnen übermittelten personenbezogenen Daten, um Ihre Frage zu beantworten oder Ihre Beanstandung zu bearbeiten. Die Rechtsgrundlage für diese Verarbeitung von personenbezogenen Daten besteht darin, dass sie für die Erfüllung eines Vertrags, wie in der DSGVO definiert, erforderlich ist. Wir verarbeiten die folgenden personenbezogenen Daten für Kundendienstzwecke:</li>
            <li>
                <ul>
                    <li>Name</li>
                    <li>Daten zur Anschrift (sofern zutreffend)</li>
                    <li>Kontaktdaten</li>
                    <li>Bestellungsdaten</li>
                    <li>Zahlungsdaten (sofern zutreffend)</li>
                    <li>Kommentare (sofern zutreffend)</li>
                </ul>
            </li>
        </ul>
        <h5>4. Umfragen zur Kundenzufriedenheit</h5>
        <ul>
            <li>Um sicherzustellen, dass unsere Dienste auf Ihre Präferenzen abgestimmt sind, können personenbezogene Daten, die Sie an unsere Kundendienstabteilung übermitteln, für Aktivitäten wie beispielsweise Umfragen zur Kundenzufriedenheit verwendet werden. Die Rechtsgrundlage für diese Verarbeitungsaktivität besteht darin, dass sie erforderlich ist, um ein legitimes Interesse von Larky AG (Kundenzufriedenheit), wie in der DSGVO definiert, zu verfolgen. Dies betrifft dieselben personenbezogenen Daten, wie unter Nr. 3 aufgelistet.</li>
        </ul>
        <h5>5. Marketingmitteilungen</h5>
        <ul>
            <li>Wir verarbeiten Ihre personenbezogenen Daten auch, um Ihnen (personalisierte) Marketingmitteilungen und Benachrichtigungen zusenden zu können. Solche Mitteilungen umfassen die jüngsten Neuigkeiten, Rabattaktionen und Updates zu neuen Restaurants (per E-Mail oder Push-Benachrichtigung) sowie Treueprogramme, unabhängig von dem Format, das wir für die Verteilung dieser Art von Mitteilungen verwenden (einschliesslich E-Mail oder Push-Benachrichtigung). Die Rechtsgrundlage für diese Verarbeitung von personenbezogenen Daten, wie in der DSGVO definiert, besteht darin, dass Sie bei der Aufgabe einer Bestellung Ihre Einwilligung erteilt haben. Wenn Sie Ihre Präferenzen im Hinblick auf den Empfang solcher Mitteilungen und Benachrichtigungen ändern möchten, können Sie diese mit dem Link in der fraglichen Marketingmitteilung abbestellen.</li>
            <li>Wir verarbeiten die folgenden personenbezogenen Daten für Marketingzwecke:</li>
            <li>
                <ul>
                    <li>Name</li>
                    <li>Kontaktdaten</li>
                    <li>Postleitzahl</li>
                </ul>
            </li>
        </ul>
        <h5>6. Cookies</h5>
        <ul>
            <li>Ausserdem verarbeiten wir personenbezogene Daten, die Sie indirekt an uns übermitteln. Larky AG verwendet Cookies für Funktions-, Analyse- und Marketingzwecke. Die Funktions-Cookies sind für die Nutzung der Webseite erforderlich. Cookies erfassen die folgenden personenbezogenen Daten:</li>
            <li>
                <ul>
                    <li>Standortdaten</li>
                    <li>IP-Adresse oder App-IDs</li>
                    <li>Internetbrowser und Gerätetyp</li>
                    <li>Sprache der Webseite</li>
                </ul>
            </li>
        </ul>
        <h5>7. Verhinderung von Betrug</h5>
        <ul>
            <li>Wir verarbeiten einen Teil der oben genannten personenbezogenen Daten auch, um Betrug und andere Formen des Missbrauchs zu verhindern. Die Rechtsgrundlage für diese Verarbeitungsaktivität besteht darin, dass sie erforderlich ist, um ein legitimes Interesse von Larky AG (Verhinderung von Betrug), wie in der DSGVO definiert, zu verfolgen.</li>
        </ul>
        <h5>8. Analyse</h5>
        <ul>
            <li>Wir verwenden Ihre personenbezogenen Daten auch, um unsere Berichtspflichten gegenüber Werbetreibenden und Stakeholder erfüllen und unsere Webseite sowie unser Sortiment mit Produkten und Dienstleistungen verbessern zu können. Die Rechtsgrundlage für diese Verarbeitungsaktivität besteht darin, dass sie erforderlich ist, um ein legitimes Interesse von Larky AG (Analyse und Berichterstattung), wie in der DSGVO definiert, zu verfolgen. Wir werden grundsätzlich sicherstellen, dass die Berichte keine Daten enthalten, die zu Ihrer Person zurückverfolgt werden können.</li>

        </ul>
        <h5>
            9. Alter
        </h5>
        <ul>
            <li>Unsere Webseite ist nicht für Personen unter 16 Jahren vorgesehen, und wir beabsichtigen nicht, personenbezogene Daten von Besuchern der Webseite, die unter 16 Jahre alt sind, zu erfassen. Wir haben jedoch keine Möglichkeit, das Alter der Besucher zu verifizieren. Daher empfehlen wir Eltern, die Online-Aktivitäten ihrer Kinder zu überwachen, um zu verhindern, dass deren personenbezogene Daten ohne elterliche Einwilligung erfasst werden. Wenn Sie vermuten, dass wir personenbezogene Daten eines Minderjährigen ohne Einwilligung erfasst haben, setzen Sie sich bitte unter <a href="mailto:service@larky.ch">service@larky.ch </a> mit uns in Verbindung. Wir werden daraufhin die Löschung dieser Daten veranlassen.</li>

        </ul>
        <h5>
            10. Automatisierte Entscheidungsfindung und Profiling
        </h5>
        <ul>
            <li>Im Rahmen der Erfüllung des Vertrags mit Ihnen und zum Zweck der Verbesserung unserer Plattform verwendet Larky AG automatisierte Entscheidungsfindung und Profiling. Wir verwenden beispielsweise Ihre Postleitzahl und/oder Standortdaten, um verfügbare Restaurants in Ihrem jeweiligen Gebiet auszuwählen. Ausserdem verwendet Larky AG die automatisierte Entscheidungsfindung, um unseren Rechtspflichten zur Verhinderung von Geldwäsche, Terrorismusfinanzierung und anderen Straftaten nachzukommen.</li>
            <li>Wenn eine solche automatisierte Entscheidungsfindung und/oder das Profiling zu einer negativen Entscheidung über Ihre Person führt und Sie nicht damit einverstanden sind, können Sie sich unter <a href="mailto:service@larky.ch">service@larky.ch </a> an uns wenden. Wir werden daraufhin eine Neubewertung der Situation veranlassen. Abgesehen davon würden wir es auch begrüssen, wenn Sie mit Vorschlägen zur Verbesserung dieser Prozesse an uns herantreten würden.</li>

        </ul>
        <h5>
            11. Wie lange bewahren wir personenbezogene Daten auf?
        </h5>
        <ul>

            <li>Larky AG wird Ihre personenbezogenen Daten nicht länger aufbewahren, als es für die Zwecke, für die Ihre personenbezogenen Daten erfasst werden, unbedingt erforderlich ist. Wir werden Ihre personenbezogenen Daten nur dann länger aufbewahren, wenn wir per Gesetz dazu verpflichtet sind. Larky AG löscht den grössten Teil Ihrer personenbezogenen Daten 2 Jahre, nachdem Sie Ihre Bestellung aufgegeben haben. Wir nutzen diese 2-jährige Frist für administrative Zwecke sowie für die Bearbeitung eventueller Fragen und Beanstandungen zu Ihrer Bestellung, von Ihrer Seite oder seitens der Restaurants. Wir bewahren personenbezogene Daten, die wir zur Berichterstattung, Analyse und Verhinderung von Missbrauch verwenden, bis zu 20 Jahre nach Aufgabe Ihrer Bestellung auf. Wir können Ihre personenbezogenen Daten nicht aus Sicherungen entfernen. Wenn wir eine Wiederherstellung aus einer Sicherung vornehmen, werden wir Ihre personenbezogenen Daten jedoch umgehend löschen.</li>


        </ul>
        <h5>
            12. Weitergabe an Restaurants
        </h5>
        <ul>
            <li>Larky AG gibt Ihre personenbezogenen Daten (Name, Daten zur Anschrift und Telefonnummer, Bestellung) an das von Ihnen ausgewählte Restaurant weiter, damit das Restaurant Ihre Bestellung liefern kann. Da Sie ein direkter Kunde des Restaurants sind, hat das Restaurant eine eigene Verantwortung und eigene Pflichten im Hinblick auf die Verarbeitung Ihrer personenbezogenen Daten. Sofern Sie Fragen zum Umgang mit Ihren personenbezogenen Daten seitens des Restaurants haben, sollten Sie sich direkt mit dem Restaurant in Verbindung setzen.</li>

        </ul>
        <h5>13. Weitergabe an andere (ausgenommen Restaurants)</h5>
        <ul>

            <li>Larky AG wird Ihre personenbezogenen Daten nicht an Dritte verkaufen, und wir werden diese Daten nur dann an Dritte weitergeben, wenn dies für die Erfüllung unseres Vertrags mit Ihnen erforderlich ist, Analyse- und Marketingzwecken dient oder für die Befolgung von Rechtspflichten notwendig ist.</li>
            <li>Ihre personenbezogenen Daten können an die folgenden Parteien weitergegeben werden:</li>
            <li>
                <ul>
                    <li>Dritte, die verschiedenen Aktivitäten zur Förderung, Vermarktung oder Unterstützung unserer Dienstleistungen durchführen. Dazu gehören Social-Media-Plattformen wie Facebook, Offshore-Kundenbetreuer, Website- und Anwendungssupport- und Hosting-Anbieter, Marketingdienstleister, eCRM-Partner wie Salesforce, die unsere Marketing-E-Mails und Push-Benachrichtigungen verwalten, Lieferfirmen, die Ihre Bestellung an Sie liefern, Marktforschungsunternehmen und Zahlungsabwicklungsanbieter, die Zahlungskartentransaktionen abwickeln - einer dieser Dritten kann sich innerhalb oder ausserhalb Ihres Wohnsitzlandes befinden;</li>
                    <li>Jede zuständige Vollzugsbehörde, Aufsichts- und andere Behörde, jedes Gericht oder jeder andere Dritte, bei denen wir der Ansicht sind, dass Offenlegung im Rahmen eines anwendbaren Gesetzes oder anwendbarer Vorschriften erforderlich ist;</li>
                    <li>Larky AG, Unternehmen unserer Gruppe;</li>
                    <li>Neue Eigentümer oder umstrukturierte Entitäten und ihre Vertreter und Berater bei einer Geschäftsumstrukturierung, bei Verkauf, Kauf oder Joint Venture, die unsere Geschäftstätigkeiten beeinflussen;</li>
                    <li>Software-Anbieter;</li>
                    <li>Implementierungspartner;</li>
                    <li>Jede andere Person, an die wir Ihre Informationen mit Ihrer Erlaubnis weitergeben dürfen.</li>
                </ul>
            </li>

            <li>Wenn Sie sich für unser Personalisiertes Cookie-Paket entschieden haben, können wir Ihre personenbezogenen Daten in pseudonymisierter Form an Drittanbieterplattformen wie Google oder Facebook weitergeben, um "Custom Audiences" zu erstellen. Solche Plattformen zeigen Ihnen personalisierte Anzeigen, die auf diesen Custom Audiences basieren. Sie können diese Anzeigen jederzeit abbestellen, indem Sie zu unserem Essentielles Cookie-Paket wechseln.</li>
            <li>Sobald wir Drittunternehmen mit der Verarbeitung Ihrer personenbezogenen Daten in unserem Namen beauftragen, werden wir einen Datenverarbeitungsvertrag abschliessen, um dasselbe Niveau an Schutz und vertraulicher Behandlung Ihrer personenbezogenen Daten zu gewährleisten. Larky AG hat in diesem Fall weiterhin die letztendliche Verantwortung für solche Verarbeitungsaktivitäten.</li>
        </ul>
        <h5>
            14. Webseiten Dritter
        </h5>
        <ul>
            <li>Unsere Webseite kann Links zu den Webseiten Dritter enthalten. Denken Sie beim Zugriff auf solche Webseiten Dritter daran, dass für jede dieser Webseiten eine eigene Datenschutzerklärung gilt. Wenngleich Larky AG bei der Auswahl von Webseiten für solche Links äusserste Vorsicht walten lässt, können wir keine Verantwortung für den Umgang mit Ihren personenbezogenen Daten seitens der Betreiber dieser Webseiten übernehmen.</li>

        </ul>
        <h5>
            15. Internationale Datenübermittlung
        </h5>
        <ul>
            <li>Wir können Ihre Daten in andere Länder als das Land, in dem Sie ansässig sind, übertragen. Auch wenn diese Länder möglicherweise Datenschutzgesetze haben, die sich von den Gesetzen Ihres Landes unterscheiden, können Sie sicher sein, dass Larky AG darauf achtet, angemessene Sicherheitsmassnahmen zum Schutz Ihrer Daten in diesen Ländern in Übereinstimmung mit der vorliegenden Datenschutzerklärung für Kunden zu treffen. Einige der Sicherheitsmassnahmen, auf die wir uns verlassen, umfassen gegebenenfalls die Verwendung der von der Europäischen Kommission genehmigten Standardvertragsklauseln bei unseren Lieferanten, konzerninterne Transfervereinbarungen (sodass wir Ihre Daten sicher innerhalb der Larky AG Gruppe auf der ganzen Welt übertragen können) und erforderlichenfalls Vertragsabschlüsse mit Privacy Shield-zertifizierten Unternehmen in den Vereinigten Staaten.</li>

        </ul>
        <h5>
            16. Zugang zu, Korrektur und Löschung von personenbezogenen Daten
        </h5>
        <ul>
            <li>Sie haben das Recht, auf die Gesamtheit der personenbezogenen Daten, die wir zu Ihrer Person erfassen, zuzugreifen sowie zu verlangen, dass wir Ihre personenbezogenen Daten korrigieren oder löschen. Wenn Sie der Ansicht sind, dass wir Ihre personenbezogenen Daten ohne gültige Rechtsgrundlage verarbeiten, oder dass wir personenbezogene Daten verarbeiten, die für unseren Auswahlprozess nicht relevant sind, setzen Sie sich bitte mit uns in Verbindung. Sie können unter <a href="mailto:service@larky.ch">service@larky.ch </a> Kontakt mit uns aufnehmen. Larky AG wird schnellstmöglich, und spätestens innerhalb von vier Wochen nach Eingang Ihrer Anfrage, auf Ihre Anfrage reagieren.</li>

        </ul>
        <h5>
            17. Tipps, Fragen und Beschwerden
        </h5>

        <ul>
            <li>Wenn Sie andere Fragen oder Beschwerden im Hinblick auf die Verarbeitung Ihrer personenbezogenen Daten vorbringen möchten, helfen wir Ihnen gern. Wir würden es auch begrüssen, wenn Sie sich mit Tipps oder Vorschlägen zur Verbesserung unserer Datenschutzpolitik an uns wenden.</li>

        </ul>
        <h5>
            18. Sicherheit
        </h5>
        <ul>
            <li>Larky AG nimmt den Schutz personenbezogener Daten sehr ernst, und wir ergreifen daher geeignete Massnahmen, um Ihre personenbezogenen Daten vor Missbrauch, Verlust, unbefugtem Zugriff, unerwünschter Offenlegung und unbefugter Änderung zu schützen. Wenn Sie der Ansicht sind, dass Ihre personenbezogenen Daten nicht angemessen geschützt werden, oder dass es Anzeichen für Missbrauch gibt, nehmen Sie bitte unter <a href="mailto:service@larky.ch">service@larky.ch </a> Kontakt mit uns auf.</li>

        </ul>
        <h5>
            19. Beschwerde an die Datenschutzbehörde
        </h5>
        <ul>
            <li>Abgesehen von der Möglichkeit, eine Beschwerde an uns zu richten, haben Sie auch das Recht, eine Beschwerde bei der zuständigen Aufsichtsbehörde für den Schutz personenbezogener Daten vorzutragen. Sie können sich zu diesem Zweck direkt mit der Aufsichtsbehörde in Verbindung setzen.</li>

        </ul>
        <h5>
            20. Aktualisierungen dieser Datenschutzerklärung für Kunden
        </h5>
        <ul>
            <li>Wir können diese Datenschutzerklärung für Kunden von Zeit zu Zeit im Hinblick auf sich ändernde rechtliche, technische oder geschäftliche Entwicklungen aktualisieren und werden Sie über die Webseite informieren.</li>
        </ul>
        <ul>
            <li>Zug, 01.12.2020</li>
        </ul>
    </div>
</section>
    </div>
""";

const pg3 = """
<div class="container">
        <h1>Allgemeine Geschäftsbedingungen (AGB) für Restaurants</h1>
        <h5>1. Definitionen</h5>
        <ul>
            <li><p><strong>Vereinbarung:</strong> Eine Vereinbarung zwischen einem Kunden und einem Restaurant über die Plattform zur Bestellung, Lieferung und/oder Abholung von Speisen, Getränken und dazugehörigen Produkten.</p></li>
            <li><p><strong>Kunde:</strong> Eine natürliche Person (18 Jahre oder älter) oder eine juristische Person, die über die Plattform eine Bestellung im Restaurant aufgibt.</p></li>
            <li><p><strong>KYC (Know Your Customer)-Informationen:</strong> Alle Unterlagen und Daten, die Larky AG entsprechend der Pflicht zur Feststellung der Kundenidentität gemäs dem schweizer Gesetz zur Prävention von Geldwäsche und Terrorismusfinanzierung benötigt.</p></li>
            <li><p><strong>Bestellung:</strong> Eine Bestellung eines Kunden beim Restaurant über die Plattform.</p></li>
            <li><p><strong>Zahlungsdienste:</strong> Empfang von Geldern von Kunden, Sicherung der Gelder und Weiterleitung der Gelder an ein Restaurant, Larky AG oder Zahlung einer Erstattung an einen Kunden.</p></li>
            <li><p><strong>Bezahlung:</strong> Die Zahlung gemäss Paragraf 36.</p></li>
            <li><p><strong>Plattform:</strong> Die Website(s), Apps, Tools und anderen Einrichtungen von Larky AG und seiner verbundenen Unternehmen und Geschäftspartner, auf denen der Service zur Verfügung gestellt wird.</p></li>
            <li><p><strong>Ranking:</strong> Das Ranking des Restaurants wie auf der Plattform von Larky AG gezeigt.</p></li>
            <li><p><strong>Restaurant:</strong> Ein Unternehmen, das Mahlzeiten, Getränke und dazugehörige Produkte zubereitet und den Service für die Ausführung und Bezahlung der Vereinbarungen nutzt.</p></li>
            <li> <p><strong>Restaurantdaten:</strong> Informationen über das Restaurant u. a. im Hinblick auf Firmen- und Kontaktinformationen, KYC-Informationen, allgemeine Informationen, Produktangebot (Mahlzeiten, Beilagen,Optionen und Getränke, einschliesslich der Zusammensetzung, Zutaten und Zusatzstoffe von Speisen und Getränken und einschliesslich der Allergene, Nährwertanalysen und Volumenangaben, sofern gesetzlich vorgeschrieben), Menüs, Preise für jedes einzelne Produkt (inkl. MwSt.), Firmenlogo, Grafik, Domainname, Liefergebiet inkl. Postleitzahlen, Lieferkosten, Mindestbestellmengen, Kontonummern für Rechnungen und Zahlungen, USt-Nr., Öffnungszeiten, einschliesslich der geistigen Eigentumsrechte, Lizenzen und gesetzlich vorgeschriebenen Informationen, sowie weitere Angaben zum Restaurant.</p></li>
            <li> <p><strong>Restaurantportal:</strong> Das Online-Portal des Restaurants, auf das zugegriffen werden kann, nachdem Larky AG einen Benutzernamen und ein Passwort zur Verfügung gestellt hat.</p></li>
            <li> <p><strong>Restaurant-Website:</strong> Eine von Larky AG erstellte Website für das Restaurant mit einem Domainnamen, der von Larky AG vorgegeben wird und Larky AG gehört.</p></li>
            <li> <p><strong>Service:</strong> Die Dienstleistungen, die einem Restaurant von Larky AG im Zusammenhang mit dem Betrieb der Plattform durch Larky AG angeboten werden, mit dem Ziel, Verträge zu schliessen, welche die Registrierung einer Restaurant-Website beinhalten können. Larky AG kann von Zeit zu Zeit auch Nebenleistungen anbieten.</p></li>
            <li> <p><strong>Trinkgeld:</strong> Betrag, den ein Kunde für den Zusteller der Bestellung entrichtet.</p></li>
        </ul>
        <h5>2. Vertragsparteien</h5>
        <ul>
            <li><p>Larky AG ist eine juristische Person nach Schweizer Gesetz mit Firmensitz in der Neugasse 6, 6300 Zug, Schweiz, eingetragen im Schweizer Handelsregister unter der Nummer CH-170.3.045.149-0, die für sich selbst und im Auftrag eines Unternehmens oder einer Person auftritt.</p></li>
            <li><p>Die vorliegenden Allgemeinen Geschäftsbedingungen (AGB) für Restaurants beziehen sich auf den Service und die Zahlungsdienste. Die Anwendbarkeit anderer allgemeiner Geschäftsbedingungen,wie der des Restaurants, istausgeschlossen.</p></li>
            <li><p>Die AGB sind elektronisch auf www.larky.ch in druckfähiger und speicherbarerForm verfügbar.</p></li>
            <li><p>Separate allgemeine Geschäftsbedingungen von Larky AG gelten zwischen Larky AG und einem Kunden bezüglich der Nutzung der Plattform durch den Kunden.</p></li>
            <li><p>Ausser für die Zustellung der betreffenden Bestellung, wenn das Restaurant den Lieferservice nutzt,ist das Restaurant allein verantwortlich für die Erfüllung einer Vereinbarung. Larky AG ist niemals einePartei einer solchenVereinbarung.</p></li>
        </ul>
        <h5>3. Bereitstellung des Service</h5>
        <ul>
            <li><p>Larky AG stellt dem Restaurant den Service zur Verfügung; infolgedessen werden Vereinbarungen geschlossen. Die Rolle von Larky AG beim Abschluss von Vereinbarungen ist die eines Vermittlersim Namen des Restaurants.</p></li>
            <li><p>Larky AG wird die für den Bestellvorgang relevanten Teile der Restaurantdaten auf der Plattform veröffentlichen, die Inhalte jedoch nicht verifizieren oder anderweitig überprüfen (es sei denn, sie beziehen sich auf KYC-Informationen). Larky AG behält sich das Recht vor, Restaurantinformationen(oder Teile davon) nicht zu veröffentlichen, und informiert das Restaurant in diesem Fall.</p></li>
            <li><p>Larky AG kann das Restaurant ermächtigen, bestimmte Restaurantdaten auf der Plattform selbst zu ändern.</p></li>
            <li><p>Larky AG wird für das Restaurant auf dem Restaurantportal relevante Daten, wie die verarbeiteten Bestellungen, die geschuldeten Zahlungen, Rechnungen und Online-Zahlungen, veröffentlichen.</p></li>
            <li><p>Larky AG kann im Rahmen der Plattform eine Restaurant-Website für das Restaurant erstellen und hosten.</p></li>
            <li><p>Larky AG kann die Restaurantdaten auf der Restaurant-Website veröffentlichen, überprüft jedoch den Inhalt nicht. Larky AG kann auf die Restaurant-Website einen Link zur Plattform setzen, sodass die Kunden Bestellungen aufgeben können.</p></li>
            <li><p>Mit Ausnahme des Namens, des Logos und Speisen auf der Speisekarte des Restaurants verbleiben alle geistigen Eigentumsrechte im Zusammenhang mit der Restaurant-Website unter allen Umständen im Besitz von Larky AG.</p></li>
            <li><p>Alle Bestellungen, die über die Website des Restaurants eingehen, werden als Bestellungen gemässden vorliegenden AGB betrachtet.</p></li>
        </ul>
        <h5>4. Registrierung des Restaurants</h5>
        <ul>
            <li><p>Das Restaurant meldet sich bei Larky AG an, indem es ein ausgefülltes Anmeldeformular an Larky AGschickt,   einschliesslich   aller   Unterlagen   und   KYC-Informationen.   Ein   Vertrag   zur   Erbringung   vonServices besteht, sobald Larky AG den Erhalt und die Genehmigung der KYC-Informationen sowie dieRestaurantanmeldung bestätigt.</p></li>
            <li><p>Larky AG kann einen Antrag auf Registrierung eines Restaurants aus einem beliebigen Grund verweigern.</p></li>
            <li><p>Nach der Annahme und Bearbeitung einer Registrierung weist Larky AG dem Restaurant einen Benutzernamen und ein Passwort zu und ermöglicht so den Zugang zum Restaurantportal.</p></li>
            <li><p>Die von Larky AG verarbeiteten Restaurantdaten werden als Daten im Zusammenhang mit dem Restaurant betrachtet und nicht als personenbezogene Daten gemäss Beschreibung in der Datenschutz-Grundverordnung.</p></li>
        </ul>
        <h5>5. Pflichten des Restaurants</h5>
        <ul>
            <li><p>Das Restaurant:</p></li>
            <ol>
                <li>ermächtigt Larky AG, Vereinbarungen im Namen des Restaurants zu schliessen,</li>
                <li>wird Larky AG die Restaurantdaten zur Verfügung stellen,</li>
                <li>ist für die Vollständigkeit und Richtigkeit der Restaurantdaten verantwortlich, die eindeutig alle erforderlichen Lebensmittelangaben beinhalten, wie beispielsweise Informationen über Allergene,</li>
                <li>wird Larky AG auf erste Anfrage zusätzliche Informationen in Bezug auf das Restaurant oder die Produkte des Restaurants zur Verfügung stellen,</li>
                <li>
                    wird Larky AG alle Änderungen der Restaurantdaten vierzehn (14) Tage vor deren Inkrafttreten mitteilen, sodass:
                    <ol>
                        <li>Larky AG die geänderten Daten des Restaurants, wie auf der Plattform dargestellt, verarbeiten kann oder</li>
                        <li>das Restaurant selbst bestimmte Restaurantdaten eigenständig ändern kann, wenn das Restaurant zu diesem Zweck von Larky AG ermächtigt ist,</li>
                    </ol>
                </li>
                <li>erlaubt Larky AG, die Restaurantdaten, zum Beispiel für Marketing-Kampagnen, Datenbanken, Partnerplattformen oder uchmaschinen, zu nutzen und zu verarbeiten, und gewährt Larky AG das Recht, Dritten die gleichen Rechte in Bezug auf die Restaurantdaten einzuräumen,</li>
                <li>erlaubt Larky AG, Zusatzleistungen anzubieten und dem Restaurant entsprechende Gebühren dafür in Rechnung zu stellen, wobei Larky AG das Restaurant im Voraus über angebotene Zusatzleistungen informiert,</li>
                <li>wird Larky AG unverzüglich informieren, wenn eine Lebensmittelkontrollbehörde oder eine andere Behörde eine Untersuchung durchführt oder eine Straftat des Restaurants beziehungsweise seiner Mitarbeiter nach dem gültigen Lebensmittelgesetz oder anderen Gesetzen oder Vorschriften feststellt,</li>
                <li>behandelt die Mitarbeiter und Lieferanten von Larky AG mit Respekt und Anstand,</li>
                <li>akzeptiert, dass Larky AG die von den Kunden eingezogenen Beträge, die an das Restaurant zu zahlen sind, mit den Beträgen verrechnet, die das Restaurant Larky AG für den Service schuldet; vorausgesetzt, dass es sich bei allen diesen Beträgen um fällige Zahlungen handelt,</li>
                <li>registriert maximal ein Restaurant auf der Plattform je Adresse,</li>
                <li>registriert maximal ein Restaurant auf der Plattform je physisch getrennter (betrieblicher) Küche,und gewährleistet Erreichbarkeit per E-Mail und Telefon während der Öffnungszeiten des Restaurants.</li>
            </ol>
        </ul>
        <h5>6. Garantien und Entschädigungen des Restaurants</h5>
        <ul>
            <li><p>Das Restaurant:</p></li>
            <ol>
                <li>garantiert, dass es alle gültigen Rechtsvorschriften und Regelungen einhält,</li>
                <li>garantiert, dass die Speisen, Getränke und anderen Produkte, die angeboten und an den Kunden geliefert werden, zum Verzehr geeignet sind und die (Informations-)Anforderungen der geltenden Lebensmittelgesetzgebung und der damit verbundenen Gesetze und Vorschriften erfüllen,</li>
                <li>garantiert, dass es Larky AG sofort informiert, wenn sich die Zusammensetzung, Zutaten und Zusatzstoffe ändern, die zu Allergien und Unverträglichkeiten führen könnten,</li>
                <li>garantiert, dass alle erforderlichen Lizenzen für den Betrieb des Restaurants und des Vertrags vorliegen,</li>
                <li>garantiert, dass es nicht in Konkurs gegangen ist, sich in keinem Insolvenz- oder Umstrukturierungsverfahren befindet, ihm kein Zahlungsaufschub gewährt wurde und es nicht Ziel einer Untersuchung oder Strafverfolgung einer Behörde ist,</li>
                <li>garantiert, dass die Restaurantdaten von Larky AG frei genutzt und verarbeitet werden können, ohne dass dadurch geistige Eigentumsrechte oder sonstige Rechte Dritter verletzt werden,</li>
                <li>schützt Larky AG und stellt Larky AG von allen Ansprüchen Dritter aufgrund einer Verletzung von geistigen Eigentumsrechten oder anderen Rechten von Drittparteien frei, einschliesslich der damit verbundenen angemessenen Kosten, die Larky AG entstehen,</li>
                <li>garantiert, dass die Vereinbarungen in Übereinstimmung mit den auf der Plattform angezeigten Restaurantdaten (einschliesslich der Lebensmittelangaben) eingehalten werden, und</li>
                <li>schützt Larky AG vor Kundenansprüchen im Zusammenhang mit der Erfüllung der Vereinbarungdurch das Restaurant, durch seine Vertreter oder Mitarbeiter.</li>
            </ol>
        </ul>
        <h5>7. Abschluss, Lieferung und Stornierung von Vereinbarungen</h5>
        <ul>
            <li><p>Eine Vereinbarung kommt zustande, wenn ein Kunde ein Angebot des Restaurants angenommen hat, indem er eine Bestellung über die Plattform aufgegeben hat. Das Restaurant ist allein verantwortlich für die Einhaltung und Leistung in Übereinstimmung mit jeder Vereinbarung sowie für den eigenen nicht durch Larky AG beauftragten Lieferdienst. Der Kunde ist gegenüber dem Restaurant allein verantwortlich für die Verbindlichkeit unter der Vereinbarung. Larky AG ist, sofern zutreffend, allein verantwortlich für die Zahlungsdienste und den durch Larky beaufragten Lieferdienst.</p></li>
            <li><p>Larky AG wird so schnell wie möglich Bestellungen über die Plattform an das Restaurant weitergeben. Das Restaurant gewährleistet die Zugänglichkeit für den Eingang von Bestellungen über eine der Verbindungsmethoden. Larky AG kann die verfügbaren Verbindungsmethoden nach eigenem Ermessen mit vorheriger Ankündigung ändern.</p></li>
            <li><p>Wenn eine Bestellung nicht zum definierten Zeitpunkt zur Abholung bereitgestellt oder vom Restaurant nicht zugestellt werden kann, wird das Restaurant den Kunden innerhalb von zehn (10) Minuten nach Erhalt einer Bestellung informieren und dem Kunden eine angemessene Alternative zur Bestellung bieten.</p></li>
            <li><p>Larky AG übernimmt keine Verantwortung für die Richtigkeit und Vollständigkeit der Bestellungen, die von den Kunden aufgegeben werden. Das Restaurant kann jede Bestellung mit dem Kunden überprüfen, indem es den Kunden unter der in der Bestellung des Kunden angegebenen Telefonnummer anruft.</p></li>
            <li><p>Das Restaurant stellt die Bestellung in Übereinstimmung mit den Liefer- und Geschäftsbedingungen des Restaurants zum definierten Zeitpunkt zur Abholung bereit oder liefert die Bestellung an den Kunden.</p></li>
            <li><p>Das Restaurant kann entscheiden, dass zur sicheren, hygienischen Verpackung der Bestellung eine Plastiktüte anstelle einer Papiertüte benötigt wird. Für die Verwendung dieser Plastiktüte dürfen dem Kunden keine Zusatzkosten in Rechnung gestellt werden, es sei denn, geltende Gesetze oder Vorschriften enthalten anderslautende Bestimmungen. Plastiktüten dürfen nur dann verwendet werden, wenn dies unbedingt erforderlich ist.</p></li>
            <li><p>Das Restaurant verwendet die Plattform nicht für den Verkauf von Produkten, deren Verkauf illegal ist (ungeachtet, ob dies über das Internet erfolgt oder nicht).</p></li>
            <li><p>Wenn eine Bestellung alkoholische Produkte oder andere Produkte enthält, für die ein gesetzliches Mindestalter gilt, so ist das Restaurant verpflichtet, nach Massgabe der gültigen Rechtsvorschriften den Kunden bei der Lieferung oder Abholung um die Vorlage eines Personalausweises zu bitten. Wenn sich der Kunde nicht adäquat identifizieren kann oder das vorgeschriebene Mindestalter noch nicht erreicht hat, verweigert das Restaurant die Lieferung der betreffenden Produkte an den Kunden.</p></li>
            <li><p>Wenn das Restaurant dem Kunden die Bestellung über Dienstleistungen eines Dritten zustellt, ist das Restaurant für die Lieferung und die Kosten der Lieferung verantwortlich. Das Restaurant schützt Larky AG vor und stellt Larky AG von eventuellen Ansprüchen Dritter im Zusammenhang mit der Lieferung durch das Restaurant oder eines dazu vom Restaurant beauftragten Dritten und den damit verbundenen Kosten frei.</p></li>
            <li> <p> Das Restaurant kann die Bestellung stornieren:</p></li>
            <ol>
                <li>wenn der Kunde eine Bestellung mit falschen Kontakt- oder Adressdaten aufgegeben hat,</li>
                <li>wenn das Angebot nicht mehr verfügbar ist und der Kunde keine vom Restaurant angebotene Alternative zu der Bestellung akzeptiert oder</li>
                <li>im Fall von höherer Gewalt im Restaurant.</li>
            </ol>
            <li><p> Larky AG kann die Bestellung stornieren, wenn die Bestellung falsch zu sein scheint oder wenn ein Verdacht auf illegale Aktivitäten besteht.</p></li>
            <li><p> Wenn eine Bestellung gemäss Paragraf 29 storniert wird, benachrichtigt das Restaurant Larky AG innerhalb von zwei (2) Tagen. Nach diesem Zeitpunkt werden Stornierungen nicht mehr berücksichtigt.</p></li>
            <li><p> Larky AG übernimmt keinerlei Haftung (i) für Stornierungen durch Kunden oder für eventuelle Schäden, die sich daraus ergeben, und (ii) für Kunden, die ihren Zahlungspflichten gegenüber dem Restaurant nicht nachkommen.</p></li>
            <li><p> Der Kunde kann einem Zusteller ein Trinkgeld über die verfügbaren Online-Zahlungsmethoden geben.</p></li>
            <li><p> Wenn der Zusteller vom Restaurant beschäftigt bzw. beauftragt wird, überweist Larky AG das Trinkgeld an das Restaurant. Das Restaurant muss dem Zusteller das Trinkgeld zahlen.</p></li>
            <li><p> Das Restaurant trägt die alleinige Verantwortung für alle (lohn-)steuerlichen Auswirkungen der Zahlung des Trinkgeldes an den Zusteller.</p></li>
        </ul>
        <h5>8. Bezahlung für den Service</h5>
        <ul>
            <li><p>Als Bezahlung für den Service zahlt das Restaurant Larky AG. Folgendes (in jedem Fall wie im Voraus vereinbart):</p></li>
            <ol>
                <li>eine monatliche Gebühr,</li>
                <li>Transaktionsgebühren bei Kartenzahlung durch Kunden,</li>
                <li>Kosten für das Bestellgerät (fakultativ),</li>
                <li>Verzugszinsen für Rechnungen, die nicht rechtzeitig bezahlt werden, und</li>
                <li>etwaige Verwaltungskosten und sonstige Kosten für die Inanspruchnahme des Service sowie Zusatzleistungen, die Larky AG für das Restaurant erbringt.</li>
            </ol>
            <li><p>Larky AG kann die Zahlung einseitig anpassen oder dem Restaurant zusätzliche Gebühren für Zusatzleistungen in Rechnung stellen. Wenn Larky AG die Zahlung einseitig ändert oder zusätzliche Gebühren erhebt, informiert Larky AG das Restaurant entsprechend vorab über die Erhebung von Zahlungen oder die Erbringung von Dienstleistungen, die zusätzliche Gebühren auslösen.</p></li>
            <li><p>Larky AG ist berechtigt, die monatliche Gebühr für jede Vereinbarung um 50 Prozentpunkte zu erhöhen, wenn das Restaurant weiterhin gegen die vorliegenden AGB verstösst, nachdem es von Larky AG auf den fraglichen Verstoss hingewiesen wurde. Die Erhöhung der Gebühr gilt für einen Monat oder für die Dauer des Verstosses.</p></li>
            <li><p>Das Restaurant verzichtet auf das Recht auf Verrechnung.</p></li>
            <li><p>Larky AG ist berechtigt, aber nicht verpflichtet, die von den Kunden eingezogenen Beträge, die im Zusammenhang mit Bestellungen, die über die Plattform aufgegeben wurden, die an das Restaurant zu zahlen sind, mit den Beträgen zu verrechnen, die das Restaurant Larky AG für den Service schuldet, vorausgesetzt, dass es sich bei allen diesen Beträgen um fällige Zahlungen handelt. Die Parteien vereinbaren, dass Larky AG die von den Kunden erhaltenen Beträge sofort an das Restaurant überweist. Die Verrechnung kann wöchentlich oder monatlich erfolgen; dies liegt im Ermessen von Larky AG.</p></li>
            <li><p>Larky AG ist berechtigt, die monatliche Gebühr des Restaurants an Larky AG durch eine Factoring-Firma in Rechnung zu stellen.</p></li>
            <li><p>Larky AG verwaltet und zahlt alle notwendigen Rückerstattungen für Bestellungen aus, die gemäss den vorliegenden AGB und/oder den Allgemeinen Geschäftsbedingungen für Kunden an die Kunden zu zahlen sind.</p></li>
        </ul>
        <h5>9. Bewertung und Ranking der Restaurants</h5>
        <ul>
            <li><p>Larky AG kann Bewertungen auf der Plattform veröffentlichen und sie nach eigenem Ermessen auch wieder von der Plattform löschen. Larky AG koordiniert nicht den Inhalt, die Veröffentlichung oder Löschung der Bewertungen durch Kunden mit dem Restaurant.</p></li>
            <li><p>Larky AG haftet gegenüber dem Restaurant nicht für den Inhalt der Bewertungen und etwaige nachteilige Folgen. Die Bewertungen spiegeln nicht die Meinung von Larky AG wider, sondern die der Kunden.</p></li>
            <li><p>Die Restaurants dürfen ihr eigenes Restaurant nicht auf der Plattform bewerten.</p></li>
            <li><p>Larky AG bestimmt das Ranking des Restaurants auf der Plattform. Restaurants können TopRank für eine vorübergehende höhere Position in bestimmten Rankings auf der Plattform für eine Gebühr pro Bestellung kaufen. Die Auswirkungen von TopRank variieren je nach Standort und hängen von anderen Faktoren ab, wie beispielsweise Entfernung, Beliebtheit und Kundenbewertungen. Larky AG garantiert nicht die Verfügbarkeit und/oder Bereitstellung (fester) Positionen.</p></li>
        </ul>
        <h5>10. Geistiges Eigentum</h5>
        <ul>
            <li><p>Das Restaurant darf das Markenzeichen für nichts verwenden, wofür Larky AG Ihnen keine ausdrückliche Genehmigung erteilt hat. Das Restaurant darf das Markenzeichen nicht auf Verpackungen, Kleidung, Schreibwaren, Fahrzeugen usw. verwenden, es sei denn, Sie haben unsere vorherige schriftliche Genehmigung. Das Restaurant darf mit dem Markenzeichen gekennzeichnete Artikel, die wir oder unsere Lieferanten Ihnen zur Verfügung gestellt haben, verwenden, aber Sie dürfen sie nur gemäss unseren Anweisungen verwenden.</p></li>
            <li><p> Das Restaurant darf das Markenzeichen nicht in Bezug auf Restaurants verwenden, die nicht auf der Plattform registriert oder aktiv sind.</p></li>
            <li><p> Wenn eine andere Person behauptet, dass die Verwendung des Markennamens des Restaurants durch das Restaurant Rechte verletzt, die ihr angeblich zustehen, müssen Sie dies Larky AG unverzüglich mitteilen, und das Restaurant muss alle Anweisungen befolgen, die wir im Zusammenhang mit der Verwendung des Markennamens in Verbindung mit dem Markenzeichen erteilen. Dies könnte bedeuten,dass Larky AG den Service einstellt und/oder das Restaurant von der Plattform ausschliesst.</p></li>
            <li><p> Sie dürfen nichts Abwertendes tun oder sagen, was das Markenzeichen in Verruf bringen oder den Ruf von Larky AG beeinträchtigen könnte.</p></li>
        </ul>
        <h5>11. Laufzeit und Beendigung des Service</h5>
        <ul>
            <li><p>Larky AG erbringt den Service für einen unbestimmten Zeitraum ab dem Datum der Annahme der Registrierung des Restaurants durch Larky AG.</p></li>
            <li><p>Die Parteien können den Service unter Einhaltung einer Frist von einem (1) Monat schriftlich auf Ende der Mindestlaufzeit von zwölf (12) Monaten kündigen. Das Restaurant kann den Service nur kündigen, wenn alle Zahlungsverpflichtungen gegenüber Larky AG erfüllt sind. Wenn das Restaurant eine Kündigung übermittelt, legt Larky AG das Datum fest, ab dem Bestellungen für das Restaurant nicht mehr akzeptiert werden. Das Restaurant erfüllt die Vereinbarungen, bis alle Zahlungsverpflichtungen gegenüber Larky AG erfüllt sind.</p></li>
            <li><p>Larky AG überprüft alle Restaurants und ihre Besitzer anhand der Sanktionsliste und nimmt eine Due-Diligence-Prüfung des Klienten vor. Wenn ein Restaurant und/oder sein Besitzer auf einer dieser Listen erscheint oder wenn Larky AG auf der Grundlage der Due-Diligence-Prüfung des Klienten zu der Schlussfolgerung gelangt, dass die Services nicht ausgeführt werden können, stellt Larky AG sofort alle Zahlungen ein und erbringt keine Services mehr für das Restaurant.</p></li>
            <li><p>Larky AG kann den Service aussetzen und Zahlungen an das Restaurant einstellen, wenn das Restaurant gegen eine Bestimmung der vorliegenden AGB verstösst oder den guten Namen und Ruf der Plattform und/oder von Larky AG schädigt, die Due-Diligence-Prüfung des Klienten nicht abgeschlossen werden kann oder zu der Schlussfolgerung führt, dass das Restaurant oder seine Besitzer auf einer oder mehreren der Sanktionslisten erscheinen.</p></li>
            <li><p>Larky AG kann den Service sofort beenden, wenn das Restaurant:</p></li>
            <ol>
                <li>gegen Bestimmungen der vorliegenden AGB verstösst,</li>
                <li>im Zuge der Registrierung falsche oder unvollständige Daten angibt oder solche Informationen nicht adäquat aktualisiert,</li>
                <li>(wiederholt) negative Bewertungen von Kunden erhält, oder</li>
                <li>(wiederholt) Bewertungen seines eigenen Restaurants auf der Plattform veröffentlicht.</li>
            </ol>
        </ul>
        <h5>12. Haftung von Larky AG</h5>
        <ul>
            <li><p>Jegliche Haftung von Larky AG gegenüber dem Restaurant ist im gesetzlich zulässigen Umfang ausgeschlossen. Die Gesamthaftung von Larky AG gegenüber dem Restaurant ist auf den Betrag beschränkt, der im vorliegenden Fall von der Haftpflichtversicherung von Larky AG ausgezahlt wird. Wenn aus irgendeinem Grund keine Zahlung aufgrund dieser Versicherung geleistet wird, ist die Haftung von Larky AG auf CHF 1’000 (tausend Franken) beschränkt.</p></li>
        </ul>
        <h5>13. Beschwerdeverfahren</h5>
        <ul>
            <li><span>13.1</span> <p>Ausser bei Beschwerden, welche die Zustellung der Bestellung betreffen, wenn das Restaurant den durch Larky AG beauftragten Lieferdienst nutzt, ist das Restaurant allein verantwortlich für die Abwicklung von Kundenbeschwerden hinsichtlich der Erfüllung von Vereinbarungen.</p></li>
        </ul>
        <h5>14. Datenschutz der Kunden</h5>
        <ul>
            <li><span>14.1</span> <p>Im Zusammenhang mit den Vereinbarungen werden den Restaurants die personenbezogenen Daten der Kunden offengelegt.</p></li>
            <li><span>14.2</span> <p>Jede Partei ist ein separater Datenverantwortlicher in Bezug auf die personenbezogenen Daten, die für ihre eigenen Zwecke und mit ihren eigenen Mitteln und/oder in ihrem jeweiligen Auftrag verarbeitet werden. Dies bedeutet, dass beide Parteien unabhängig voneinander für die Verarbeitung der personenbezogenen Daten verantwortlich sind, deren Zwecke und Mittel sie im Rahmen der vorliegenden AGB (teilweise) bestimmen.</p></li>
            <li><span>14.3</span> <p>Das Restaurant ist über die Datenschutzrichtlinie von Larky AG im Bilde und hält sich an diese Richtlinie sowie an das gültige Datenschutzgesetz. Die aktuelle Fassung der Datenschutzerklärung für Restaurants findet sich auf der Website.</p></li>
            <li><span>14.4</span> <p>Das Restaurant wird keine personenbezogenen Daten von Kunden an Dritte weitergeben und keine Kommunikation mit Kunden führen, ausser zur Erfüllung von Vereinbarungen, oder wenn Larky AG vorher schriftlich um Einverständnis gefragt wurde.</p></li>
            <li><span>14.5</span> <p>Das Restaurant weist Larky AG sofort (unverzüglich) schriftlich auf Verletzungen der Datensicherheit im Zusammenhang mit personenbezogenen Daten hin, von denen es in Bezug auf die personenbezogenen Daten der Kunden Kenntnis erlangt, und hält Larky AG auf dem Laufenden, was solche Verletzungen der Datensicherheit betrifft.</p></li>
            <li><span>14.6</span> <p>Nichts in den vorliegenden AGB oder den darin festgelegten Absprachen beinhaltet, dass eine der Vertragsparteien als i) Verarbeiter der anderen Partei gilt oder ii) die Funktion des Datenverantwortlichenin Bezug auf die personenbezogenen Daten, die eine Partei an die jeweils andere Partei weitergibt, gemeinsam mit der anderen Partei ausübt.</p></li>
        </ul>
        <h5>15. Sonstige Bestimmungen</h5>
        <ul>
            <li><span>15.1</span> <p>Larky AG kann die vorliegenden AGB einseitig ändern und die geänderten Allgemeinen Geschäftsbedingungen auf der Plattform veröffentlichen.</p></li>
            <li><span>15.2</span> <p>Wenn das Restaurant den durch Larky AG beaufragten Lieferdienst nutzt, gelten die Allgemeinen Geschäftsbedingungen des Lieferdienstes zusätzlich zu den vorliegenden AGB. In diesem Fall werden die Allgemeinen Geschäftsbedingungen des Lieferdienstes als integraler Bestandteil der vorliegenden AGB betrachtet, und alle Verweise in den vorliegenden AGB auf die Lieferung durch das Restaurant sind somit ungültig.</p></li>
            <li><span>15.3</span> <p>Die Rechtsbeziehung zwischen Larky AG und dem Restaurant unterliegt Schweizer Recht. Streitigkeiten, die aus oder im Zusammenhang mit diesem Rechtsverhältnis entstehen, werden ausschliesslich von den Gerichten in Zürich entschieden.</p></li>
            <li><span>15.4</span> <p>Das Restaurant kann die Rechte und Pflichten, die sich aus dem Service und den Zahlungsdiensten ergeben, nicht an Larky AG verpfänden oder übertragen, es sei denn, Larky AG stimmt einer solchen Übertragung im Voraus schriftlich zu. Larky AG kann seine Rechte oder Pflichten aus dem Service und den Zahlungsdiensten an Dritte übertragen oder verpfänden.</p></li>
            <li><span>15.5</span> <p>Das Restaurant behandelt die Informationen über den Service, die Zahlungsdienste und alle Informationen in Bezug auf diesbezügliche Geschäftsbedingungen in diesem Zusammenhang vertraulich.</p></li>
            <li><span>15.6</span> <p>Sollte eine Bestimmung der vorliegenden AGB ganz oder teilweise nichtig, ungültig oder nicht durchführbar sein, so wird die Gültigkeit, Verbindlichkeit und Durchführbarkeit der anderen Bestimmungen in den vorliegenden AGB durch diese Bestimmung oder den entsprechenden Teil davon nicht berührt.</p></li>
            <li><span>15.7</span> <p>Die vorliegenden AGB sind in mehreren Sprachen verfasst, und alle Fassungen haben dieselbe Gültigkeit. Wenn zwischen den Fassungen ein Widerspruch oder eine Inkonsistenz besteht, ist die deutsche Fassung gültig und massgebend.</p></li>
        </ul>
        <p>Zug, 15.01.2021</p>
    </div>
""";

const pg4 = """
<section class="terms-content policy-content">
    <div class="container">
        <h1>Datenschutzerklärung für Restaurants</h1>
        <p style="padding: 0;">Diese Datenschutzerklärung für Restaurants gilt für die allgemeine Verarbeitung von Daten der Larky AG Restaurants ("Sie" oder "Restaurants"). Der Datenverantwortliche für die Verarbeitung dieser personenbezogenen Daten ist Larky AG.</p>
        <h6>Welche Daten verarbeiten wir und warum?</h6>
        <p style="padding: 0;">Larky AG verarbeitet Ihre Daten, weil Sie unsere Dienste nutzen. Wir verwenden die folgenden Daten für die folgenden Zwecke.</p>
        <h5>1. Anmeldeprozess</h5>
        <p>Wir verarbeiten die Daten, die für Ihre Anmeldung als Restaurant und für die Erfüllung der für uns geltenden Vorgaben gemäss Gesetzen und Vorschriften zur Bekämpfung von Geldwäsche und Terrorismusfinanzierung und zur Verhinderung der Nutzung des Finanzsystems zum Zwecke der Geldwäsche und der Terrorismusfinanzierung benötigt werden. Wir verarbeiten die folgenden Daten im Bestellprozess:</p>
        <ul>
            <li>(Firmen-, Handels-)Name</li>
            <li>Adressdaten</li>
            <li>Kontaktdaten</li>
            <li>Handelsregisternummer</li>
            <li>USt.-Nummer</li>
            <li>Zahlungsmethode</li>
            <li>Ausweiskopie des Vertreters in Rechtssachen/UBO (ultimate beneficial owner, deutsch letztendlich wirtschaftlich Berechtigter)</li>
            <li>Handelsregisterauszug</li>
            <li>Kopie der geschäftlichen Bankkarte/des Kontoauszugs</li>
            <li>Kopie des Nachweises der Inlandsadresse</li>
        </ul>
        <h5>2. Kundendienst</h5>
        <p>Wenn Sie sich mit unserem Kundendienst in Verbindung setzen, verwenden wir die von Ihnen übermittelten Daten, um Ihre Frage zu beantworten oder Ihre Beanstandung oder Kundenbeanstandungen zu bearbeiten. Wir verarbeiten die folgenden Daten für Kundendienstzwecke:</p>
        <ul>
            <li>Name</li>
            <li>Adressdaten (sofern zutreffend)</li>
            <li>Kontaktdaten</li>
            <li>Zahlungsdaten (sofern zutreffend)</li>
            <li>Anmerkungen (sofern zutreffend)</li>
        </ul>
        <h5>3. Umfragen zur Kundenzufriedenheit</h5>
        <p>Um sicherzustellen, dass unsere Dienste auf Ihre Präferenzen und die Präferenzen unserer Kunden abgestimmt sind, können Daten, die Sie unserer Kundendienstabteilung übermitteln, für Aktivitäten wie beispielsweise Umfragen zur Kundenzufriedenheit verwendet werden. Wir verarbeiten die folgenden Daten für Umfragen zur Kundenzufriedenheit:</p>
        <ul>
            <li>Name</li>
            <li>Bewertung</li>
        </ul>
        <h5>4. Marketingmitteilungen</h5>
        <p>Wir verarbeiten Ihre Daten auch, um Ihnen (personalisierte) Marketingmitteilungen und Benachrichtigungen zusenden zu können. Wenn Sie Ihre Präferenzen im Hinblick auf den Empfang solcher Mitteilungen und Benachrichtigungen ändern möchten, können Sie diese mit dem Link in der betreffenden Mitteilung abbestellen.</p>
        <p>Wir verarbeiten die folgenden Daten für Marketingzwecke:</p>
        <ul>
            <li>Name</li>
            <li>Kontaktdaten</li>
            <li>Postleitzahl</li>
        </ul>
        <h5>5. Cookies</h5>
        <p>Larky AG verwendet zudem Cookies für Funktions-, Analyse- und Marketingzwecke. Die Funktions-Cookies sind für die Nutzung der Webseite erforderlich. Die durch Analyse- und Marketing-Cookies erfassten Daten werden nicht mit anderen Informationen verknüpft, die Sie während des Bestellprozesses übermitteln. In unserer Cookie-Richtlinie finden Sie weitere Einzelheiten zu Cookies.</p>
        <h5>6. Analyse</h5>
        <p>Wir verwenden Ihre Daten auch, um unsere Berichtspflichten gegenüber Werbetreibenden zu erfüllen und unsere Webseite sowie unser Angebot an Produkten und Dienstleistungen verbessern zu können. Wir werden grundsätzlich sicherstellen, dass die Berichte keine Daten enthalten, die zu Ihrer Person zurückverfolgt werden können.</p>
        <h5>7. Automatisierte Entscheidungsfindung und Profiling</h5>
        <p>Im Rahmen der Erfüllung des Vertrags mit Ihnen und zum Zweck der Verbesserung unserer Plattform verwendet Larky AG automatisierte Entscheidungsfindung und Profiling. Larky AG verwendet die automatisierte Entscheidungsfindung, um unseren Rechtspflichten, einschliesslich, aber nicht beschränkt auf, Rechtspflichten zur Verhinderung von Geldwäsche, Terrorismusfinanzierung und anderen Straftaten, nachzukommen. Ausserdem verwenden wir Ihre Postleitzahl, um einem Kunden automatisch eine Auswahl an Restaurants in seiner Nähe anzubieten.</p>
        <h5>8. Wie lange bewahren wir Daten auf?</h5>
        <p>Larky AG wird Ihre Daten nicht länger aufbewahren, als es für die Zwecke, für die Ihre Daten erfasst werden, unbedingt erforderlich ist. Wir werden Ihre Daten nur dann länger aufbewahren, wenn wir per Gesetz dazu verpflichtet sind. Wir können Ihre Daten nicht aus Sicherungen entfernen. Wenn wir eine Wiederherstellung aus einer Sicherung vornehmen, werden wir Ihre Daten jedoch umgehend löschen.</p>
        <h5>9. Weitergabe an Kunden/personenbezogene Daten von Kunden</h5>
        <p>Larky AG gibt Ihre Daten an den Kunden weiter, der eine Bestellung bei Ihnen aufgegeben hat, sowie an potentielle Kunden, die sich Ihr Restaurant auf unserer Plattform ansehen. Da der Kunde Ihr direkter Kunde ist, haben Sie eine eigenständige Verantwortung und eigene Pflichten im Hinblick auf die Verarbeitung seiner personenbezogenen Daten. Kunden können sich direkt an Sie wenden, wenn sie Fragen dazu haben, wie Sie ihre personenbezogenen Daten verarbeiten.</p>
        <p>Sie und wir gelten als separate Verantwortliche im Hinblick auf die personenbezogenen Daten der Kunden, die Sie oder wir für Ihre oder unsere Zwecke und mit Ihren oder unseren Mitteln und/oder in Ihrem oder unserem jeweiligen Namen verarbeiten. Das bedeutet, dass wir beide unabhängig voneinander für die Verarbeitung der personenbezogenen Daten verantwortlich sind, für die wir (teilweise) die Zwecke und Mittel festlegen.</p>
        <h5>10. Weitergabe an andere</h5>
        <p>Larky AG wird Ihre Daten nicht an Dritte verkaufen, und wir werden diese Daten nur dann an Dritte weitergeben, wenn dies für die Erfüllung unseres Vertrags mit Ihnen erforderlich ist, Analyse- und Marketingzwecken dient oder für die Befolgung von Rechtspflichten notwendig ist.</p>
        <p>Ihre Daten können an die folgenden Parteien weitergegeben werden:</p>
        <ul>
            <li>Kunden, die Bestellungen bei Ihrem Restaurant aufgeben, um Ihre Dienste zu nutzen;</li>
            <li>Larky AG-Unternehmen unserer Gruppe;</li>
            <li>Dritte, die unsere Dienste unterstützen (z. B. unsere Marketingpartner, unsere Lieferpartner und jedes Drittunternehmen, mit dem wir zusammenarbeiten, um Ihnen spezielle Ermässigungen für Produkte oder Dienste zu ermöglichen);</li>
            <li>Jede zuständige Vollzugsbehörde, Aufsichts- und andere Behörde, jedes Gericht oder jeder andere Dritte, bei denen wir der Ansicht sind, dass Offenlegung im Rahmen eines anwendbaren Gesetzes oder anwendbarer Vorschriften erforderlich ist;</li>
            <li>Neue Eigentümer oder umstrukturierte Entitäten und ihre Vertreter und Berater bei einer Geschäftsumstrukturierung, bei Verkauf, Kauf oder Joint Venture, die unsere Geschäftstätigkeiten beeinflussen;</li>
            <li>Jede andere Person, an die wir Ihre Informationen mit Ihrer Erlaubnis weitergeben dürfen.</li>
        </ul>
        <h5>11. Websites Dritter</h5>
        <p>Unsere Website kann Links zu den Websites Dritter enthalten. Denken Sie beim Zugriff auf solche Websites Dritter daran, dass für jede dieser Websites eine eigene Datenschutzerklärung gilt. Wenngleich Larky AG bei der Auswahl von Websites für solche Links äusserste Vorsicht walten lässt, können wir keine Verantwortung für den Umgang mit Ihren Daten seitens der Betreiber dieser Websites übernehmen.</p>
        <h5>12. Tipps, Fragen und Beschwerden</h5>
        <p>Wenn Sie weitere Fragen oder Beschwerden im Hinblick auf die Verarbeitung Ihrer Daten vorbringen möchten, helfen wir Ihnen gern. Wir würden es auch begrüssen, wenn Sie sich mit Tipps oder Vorschlägen zur Verbesserung unserer Datenschutzrichtlinien an uns wenden. Sie können sich unter <a href="mailto:service@larky.ch">service@larky.ch </a> mit uns in Verbindung setzen.</p>
        <h5>13. Sicherheit</h5>
        <p>Larky AG nimmt den Datenschutz sehr ernst, und wir ergreifen daher geeignete Massnahmen, um Ihre Daten vor Missbrauch, Verlust, unbefugtem Zugriff, unerwünschter Offenlegung und unbefugter Änderung zu schützen. Wenn Sie der Ansicht sind, dass Ihre Daten nicht angemessen geschützt werden oder dass es Anzeichen für Missbrauch gibt, nehmen Sie bitte unter <a href="mailto:service@larky.ch">service@larky.ch </a> Kontakt mit uns auf.</p>
        <h5>14. Recht auf Auskunft über personenbezogene Daten, Berichtigung und Löschung</h5>
        <p>Sie haben das Recht, Auskunft über alle Daten, die wir von Ihnen erfassen, sowie die Berichtigung oder Löschung Ihrer Daten zu verlangen. Wenn Sie der Meinung sind, dass wir Ihre Daten ohne eine gültige Rechtsgrundlage verarbeiten oder dass wir personenbezogene Daten verarbeiten, die für unseren Auswahlprozess nicht relevant sind, nehmen Sie bitte Kontakt mit uns auf. Sie können sich an <a href="mailto:service@larky.ch">service@larky.ch </a> wenden. Larky AG wird Ihre Anfrage so schnell wie möglich nach Erhalt Ihrer Anfrage beantworten.</p>
        <h5>15. Internationale Datenübermittlung</h5>
        <p>Wir können Ihre Daten in andere Länder als das Land, in dem Sie ansässig sind, übertragen. Auch wenn diese Länder möglicherweise Datenschutzgesetze haben, die sich von den Gesetzen Ihres Landes unterscheiden, können Sie sicher sein, dass Larky AG darauf achtet, angemessene Sicherheitsmassnahmen zum Schutz Ihrer Daten in diesen Ländern in Übereinstimmung mit der vorliegenden Datenschutzerklärung für Restaurants zu treffen. Einige der Sicherheitsmassnahmen, auf die wir uns verlassen, umfassen gegebenenfalls die Verwendung der von der Europäischen Kommission genehmigten Standardvertragsklauseln bei unseren Lieferanten, konzerninterne Transfervereinbarungen (sodass wir Ihre Daten sicher innerhalb der Larky AG-Unternehmensgruppe auf der ganzen Welt übertragen können) und erforderlichenfalls Vertragsabschlüsse mit Privacy Shield-zertifizierten Unternehmen in den Vereinigten Staaten.</p>
        <p>Wir können diese Datenschutzerklärung für Restaurants von Zeit zu Zeit im Hinblick auf sich ändernde rechtliche, technische oder geschäftliche Entwicklungen aktualisieren und werden Sie über die Webseite informieren.</p>
        <p>Zug, 01.12.2020</p>
    </div>
</section>
""";

const pg5 = """
<section class="terms-content">
    <div class="container">
         
        <h1>Allgemeine Geschäftsbedingungen (AGB) für den Lieferdienst<span style="color:black; font-size:22px;"> (erst ab Frühjahr 2021 möglich)</span></h1>
        <p>Die vorliegenden Geschäftsbedingungen für den Lieferdienst gelten für die Beziehung zwischen Larky AG und einem Restaurant, das den durch Larky AG beauftragten Lieferdienst in Anspruch nimmt.</p>
        <h5>1. Definitionen</h5>
        <ul>

            <li><p><strong>Lieferung:</strong> Die Lieferung einer Bestellung von einem Restaurant an einen Kunden durch Larky AG.</p></li>
            <li><p><strong>Lieferentfernung</strong>: Entfernung zwischen dem Restaurant und dem Kunden, festgelegt von Larky AG.</p></li>
            <li><p><strong>Lieferdienst: </strong>Den durch Larky AG beauftragten Lieferdienst für Restaurants zur Bereitstellung der Logistik und Lieferung von Bestellungen.</p></li>
            <li><p><strong>Zusteller: </strong>Person, welche die Lieferung durchführt.</p></li>
            <li><p><strong>Allgemeine Geschäftsbedingungen für Restaurants:</strong> Die aktuellste Fassung der Allgemeinen Geschäftsbedingungen für Restaurants.</p></li>
            <li><p><strong>Auftragsbestätigung:</strong> Bestätigung der Annahme der Bestellung durch das Restaurant gegenüber Larky AG, einschliesslich gegebenenfalls Angabe der Vorbereitungszeit.</p></li>
            <li><p><strong>Vorbereitungszeit:</strong> Die Vorbereitungszeit, die vorab zwischen dem Kunden und dem Restaurant über die Plattform von Larky AG vereinbart wird und bis zu deren Ablauf der Bestellung zur Auslieferung bereitsteht.</p></li>
            <li><p><strong>Allgemeine Geschäftsbedingungen für den Lieferdienst</strong>: Die vorliegenden Geschäftsbedingungen im Hinblick auf den durch Larky AG beauftragten Lieferdienst, in ihrer von Zeit zu Zeit geänderten Fassung.</p></li>
        </ul>
        <h5>2. Geltungsbereich</h5>
        <ul>
            <li><p>Um den durch Larky AG beauftragten Lieferdienst in Anspruch zu nehmen, muss sich ein Restaurant bei Larky AG registrieren, indem es ein ausgefülltes Anmeldeformular an Larky AG sendet. Larky AG kann nach alleinigem Ermessen die Registrierung eines Restaurants für den Lieferdienst ablehnen. Ein Vertrag für den Lieferdienst tritt erst nach Bestätigung der Registrierung durch Larky AG in Kraft.</p></li>
            <li><p>Wenn das Restaurant mehrere Niederlassungen betreibt, muss sich jede teilnehmende Niederlassung separat registrieren.
            </p></li><li> <p>Das Restaurant stimmt zu, dass die vorliegenden Geschäftsbedingungen für den durch Larky AG beauftragten Lieferdienst für die Bereitstellung der Lieferdienste gelten.</p></li>
            <li><p>Die Allgemeinen Geschäftsbedingungen für Restaurants gelten weiterhin für die Beziehung zwischen Larky AG und dem Restaurant. In diesem Zusammenhang ist jeder Verweis auf den „Service“ in den Allgemeinen Geschäftsbedingungen für Restaurants so auszulegen, dass er den durch Larky beauftragten „Lieferdienst“ einbezieht. Wenn die Allgemeinen Geschäftsbedingungen für Restaurants ausdrücklich von den vorliegenden Allgemeinen Geschäftsbedingungen für den Lieferdienst abweichen, haben die Alllgemeinen Geschäftsbedingungen für den Lieferdienst Vorrang.</p></li>
            <li><p>Die Gültigkeit anderer allgemeiner Bedingungen, beispielsweise der Bedingungen des Restaurants, wird ausdrücklich zurückgewiesen.</p></li>
        </ul>
        <h5>3. Der Lieferdienst</h5>
        <ul>
            <li><p>Die Lieferung der durch Larky AG beauftragten Lieferdienste wird von Zustellern übernommen, die von Larky AG oder einem Geschäftspartner von Larky AG beauftragt oder beschäftigt werden.</p></li>
            <li><p>Larky AG legt die Dienstzeiten fest, während derer die durch Larky AG beauftragte Lieferdienste angeboten werden. Die Dienstzeiten können abhängig vom Restaurant oder Gebiet variieren.</p></li>
            <li><p>Larky AG legt die maximale Lieferentfernung für die durch Larky beauftragten Lieferdienste fest. Larky AG behält sich das Recht vor, diese Lieferentfernung zu ändern.</p></li>
            <li><p>Larky AG kann die durch Larky AG beauftragten Lieferdienste im Fall von höherer Gewalt aussetzen, u. a. bei Wetterphänomenen (z. B. Blitzeis, Überschwemmung, starker Schneefall), mit dem Verkehr zusammenhängenden Ereignissen (z. B. Vollsperrungen, Marathon, lange Verkehrsstaus) und Kapazitätsproblemen.</p></li>
        </ul>
        <h5>4. Zahlung</h5>
        <ul>
            <li> <p>Das Restaurant zahlt die vereinbarte Provision für den durch Larky beauftragten Lieferdienst und andereDienstleistungen, die von Larky AG erbracht werden. Es gelten die Bestimmungen über die „Bezahlung für den Service“ in den Allgemeinen Geschäftsbedingungen für Restaurants.</p></li>
            <li> <p>Larky AG kann dem Kunden (variable) Lieferkosten in Rechnung stellen.</p></li>
            <li> <p>Alle Trinkgelder, die an Zusteller der Bestellung bezahlt werden, werden von Larky AG an den Zusteller überwiesen. Das Restaurant hat keinen Anspruch auf irgendeinen Teil des Trinkgeldes.</p></li>
        </ul>
        <h5>5. Vorbereitung der Bestellung und der Lieferung</h5>
        <ul>
            <li><p>Der Kunde gibt eine Bestellung über die Plattform auf. Larky AG leitet die Bestellung über die vereinbarte Informationstechnologie an das Restaurant weiter. Das Restaurant akzeptiert die Bestellung automatisch über die auf der Plattform voreingestellten maximal verfügbarer Anzahl Gerichte. Eine spätere Änderung der Vorbereitungszeit durch das Restaurant ist nicht zulässig.</p></li>
            <li><p>Innerhalb der Vorbereitungszeit muss die Bestellung vom Restaurant vorbereitet, ordnungsgemässund sicher verpackt und vollständig zusammengestellt werden, sodass sie vom Kunden oder einem durch Larky AG beauftragten Zusteller fristgerecht abgeholt werden kann.</p></li>
            <li><p>Falls der Kunde eine Auslieferung wünscht, wird die Bestellung vom durch Larky AG beauftragten Zusteller schnellstmöglich nach der fristgerechten Abholung im Restaurant an den Kunden ausgeliefert.</p></li>
            <li><p>Wenn eine Bestellung alkoholische Produkte oder andere Produkte umfasst, die einer gesetzlichen Altersgrenze unterliegen, kann Larky AG den Kunden bitten, bei Lieferung gemäss geltendem Recht einen Ausweis vorzulegen. Wenn der Kunde sich nicht angemessen ausweisen kann oder die Vorgaben zum Mindestalter nicht erfüllt, wird die Bestellung oder werden die betreffenden Produkte der Bestellung nicht an den Kunden ausgeliefert. Der durch Larky beauftragte Zusteller hat in diesen Fällen die alkoholischen Produkte an das Restaurant zu retournieren.</p></li>
        </ul>
        <h5>6. Verzögerung und Lieferausfälle</h5>
        <ul>
            <li> <p>Wenn und insoweit eine Bestellung aufgrund einer Ursache, die dem Restaurant zuzuschreiben ist, nicht ausgeliefert werden kann oder sich wesentlich verzögert, hat Larky AG Anspruch auf Entschädigung durch das Restaurant für alle angemessenen Kosten, die Larky AG entstehen.</p></li>
           
            <li><p>Wenn und insoweit eine Bestellung an das Restaurant übertragen wurde und nachfolgend aufgrund einer Ursache, die Larky AG zuzuschreiben ist, nicht ausgeliefert werden kann oder sich wesentlich verzögert,wird Larky AG dem Restaurant entstandene Kosten in angemessener Weise erstatten.</p></li>
           
            <li> <p>Wartezeiten für durch Larky AG beauftragte Zusteller im Restaurant sollten seitens des Restaurants aktiv vermieden werden. Larky AG kann dem Restaurant die Kosten für Wartezeiten über 10 Minuten inRechnung stellen.</p></li>
        </ul>
        <h5>7. Haftung</h5>
        <ul>
            <li> <p>Die Haftung von Larky AG ist beschränkt, wie in den Allgemeinen Geschäftsbedingungen für Restaurants beschrieben.</p></li>
        </ul>
        <h5>8. Laufzeit und Kündigung des Dienstes</h5>
        <ul>
            <li><p>Larky AG stellt den durch Larky AG beauftragte Lieferdienst für eine unbegrenzte Laufzeit bereit.</p></li>
            
            <li><p>Die Parteien können den durch Larky AG beaufragten Lieferdienst ohne Angabe von Gründen schriftlich unter Wahrung einer Frist von12 Monat gemäss den Kündigungsbestimmungen in den Allgemeinen Geschäftsbedingungen für Restaurants kündigen oder aussetzen.</p></li>
        </ul>
        <h5>9. Sonstiges</h5>
        <ul>
            <li> <p>Larky AG kann die vorliegenden Geschäftsbedingungen für den Lieferdienst jederzeit einseitig ändern und wird eine entsprechende Benachrichtigung sowie die geänderten Bedingungen auf der Website veröffentlichen.</p></li>
            
            <li> <p>Sofern eine Bestimmung der vorliegenden Bedingungen in ihrer Gesamtheit oder teilweise nichtig, ungültig oder nicht durchführbar ist, berührt eine solche Bestimmung oder der entsprechende Teil einersolchen Bestimmung nicht die Gültigkeit, verbindliche Wirkung und Durchführbarkeit der anderen Bestimmungen in den vorliegenden Bedingungen.</p></li>
        </ul>
        <p>Zug, 01.12.2020</p>
    </div>
</section>
""";
