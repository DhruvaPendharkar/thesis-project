import javafx.util.Pair;
import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.List;
import java.util.TreeSet;

/**
 * Created by dhruv on 2/12/2018.
 */
class KnowledgeGenerationTest {
    @BeforeAll
    static void TestSetupParser() {
        Sentence.SetupLexicalizedParser();
        Assert.assertNotNull(Sentence.parser);
        Assert.assertNotNull(Sentence.pipeline);
    }

    @BeforeEach
    void InitializeTest(){
        Word.eventId = 1;
    }

    @Test
    void TestNintendoStory() throws IOException {
        String content = "Nintendo said on Thursday that Nintendo would soon terminate Nintendo smartphone_app Miitomo," +
        " which gained attention as the game_makers_initial_foray into the smartphone business, because Miitomo failed " +
        "to attract enough players. A nintendo_spokesman said that, the decision was made to streamline Nintendo " +
        "resources to other smartphone_apps. The number of active users of the game has been declining. Miitomo, which " +
        "Nintendo introduced globally in March 2016, features the company Mii avatar_system and lets users communicate " +
        "by exchanging personal information such as favorite movies. Though the company described Miitomo as a game_app," +
        " analysts and players viewed Miitomo more as a social-networking service and Miitomo failed to gain users from " +
        "larger rivals such as Facebook_Inc. Kyoto-based Nintendo said the free-to-play app_service would end on May 9. " +
        "The app was a failure since Mittomo's early stage and Hideki_Yasuda had been saying that, Nintendo should shut " +
        "down the service as soon as possible, said Hideki_Yasuda, an analyst at Ace_Research_Institute. Hideki_Yasuda " +
        "said that, without a large number of active users, users would use the app daily, this kind of service is not " +
        "attractive. Besides Miitomo, Nintendo has introduced Super_Mario_Run, Fire_Emblem_Heroes and " +
        "Animal_Crossing_Pocket_Camp as game_apps for smartphone users. Super_Mario_Run, Fire_Emblem_Heroes and " +
        "Animal_Crossing_Pocket_Camp have had more success than Miitomo, but the smartphone business has yet to become " +
        "a major revenue_generator for Nintendo. Company executives say that, the executives view smartphone games as a " +
        "way of attracting customers, customers may later try out Nintendo machines such as the Switch.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Story%%");
        System.out.println("%%-------------------------------------------------------%%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(155, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(751, ruleString.size());
    }

    @Test
    void Test1_1Story() throws IOException {
        String content = "Super_Bowl_50 was an american_football game. Super_Bowl_50 was to determine the champion of " +
        "the National Football League (NFL) for the 2015 season. The American_Football_Conference's (AFC) champion team, " +
        "Denver_Broncos, defeated the National_Football_Conference's (NFC) champion team, Carolina_Panthers, by 24_10 to " +
        "earn AFC third Super_Bowl title. As Super_Bowl_50 was the 50th Super_Bowl, the league emphasized the " +
        "'golden anniversary' with various gold_themed initiatives, as well as temporarily suspending the tradition of " +
        "naming each Super_Bowl with roman_numerals, under the tradition the game would have been known as Super_Bowl_L," +
        " so that the logo could prominently feature the Arabic_numerals_50. The game was played on February 7 2016, " +
        "at Levis_Stadium, in the San_Francisco_Bay_Area, at Santa_Clara in California.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(78, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(272, ruleString.size());
    }

    @Test
    void Test2_1Story() throws IOException {
        String content = "One_of_the_most_famous people born in Warsaw was Maria_Skłodowska_Curie, Maria_Curie " +
        "achieved international recognition for Maria_Curie's research on radioactivity and was the first " +
        "female recipient of the Nobel Prize. The famous musicians include Władysław_Szpilman and Frédéric_Chopin. " +
        "Though Chopin was born in the village of Żelazowa_Wola about 60_km from Warsaw, Chopin moved to the city " +
        "with Chopin's family, when Chopin was seven_months_old. Casimir_Pulaski, a polish general and hero of the " +
        "American Revolutionary War, was born in Warsaw in 1745.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(56, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(365, ruleString.size());
    }

    @Test
    void Test3_1Story() throws IOException {
        String content = "Nikola_Tesla (10 July 1856 – 7 January 1943) was a serbian-american " +
                "inventor, electrical engineer, mechanical engineer, physicist, and futurist best known for Nikola_Tesla's " +
                "contributions to the design of the modern alternating_current (AC) electricity supply system.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(38, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(232, ruleString.size());
    }

    @Test
    void Test4_1Story() throws IOException {
        String content = "The Normans were the people who, in the 10th and 11th centuries, gave Norman's name " +
        "to Normandy, which is a region in France. Normans descended from the Norse raiders and pirates from " +
        "Denmark_Iceland and Norway, Normans, under Normans's leader, Rollo, agreed to swear fealty to " +
        "King_Charles_III of West_Francia. Normans's descendants, through generations of assimilating and mixing " +
        "with the native Frankish_and_Roman-Gaulish populations, would gradually merge with the Carolingian_based " +
        "cultures of West_Francia. The distinct cultural and ethnic identity of the Normans emerged initially in " +
        "the first half of the 10th century, and the cultural and ethnic identity continued to evolve over the " +
        "succeeding centuries.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(80, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(388, ruleString.size());
    }

    @Test
    void Test5_1Story() throws IOException {
        String content = "Computational complexity theory is a branch of the theory of computation in theoretical " +
        "computer science that focuses on classifying computational problems according to their inherent difficulty, " +
        "and relating those classes to each other. A computational problem is understood to be a task that is in " +
        "principle amenable to being solved by a computer, which is equivalent to stating that the problem may be " +
        "solved by mechanical application of mathematical steps, such as an algorithm.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(0, ruleString.size());
    }

/*
    @Test
    void Test6_1Story() throws IOException {
        String content = "The role of teacher is often formal and ongoing, carried out at a school or other place of " +
        "formal education. In many countries, a person who wishes to become a teacher must first obtain specified " +
        "professional qualifications or credentials from a university or college. These professional qualifications " +
        "may include the study of pedagogy, the science of teaching. Teachers, like other professionals, may have to " +
        "continue their education after they qualify, a process known as continuing professional development. " +
        "Teachers may use a lesson plan to facilitate student learning, providing a course of study which is called " +
        "the curriculum.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test7_1Story() throws IOException {
        String content = "Martin Luther; 10 November 1483 – 18 February 1546) was a German professor of theology, composer, " +
        "priest, former monk and a seminal figure in the Protestant Reformation. Luther came to reject several teachings " +
        "and practices of the Late Medieval Catholic Church. He strongly disputed the claim that freedom from God's " +
        "punishment for sin could be purchased with money. He proposed an academic discussion of the power and usefulness " +
        "of indulgences in his Ninety-Five Theses of 1517. His refusal to retract all of his writings at the demand of " +
        "Pope Leo X in 1520 and the Holy Roman Emperor Charles V at the Diet of Worms in 1521 resulted in his " +
        "excommunication by the Pope and condemnation as an outlaw by the Emperor.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test8_1Story() throws IOException {
        String content = "Southern California, often abbreviated SoCal, is a geographic and cultural region that generally " +
        "comprises California's southernmost 10 counties. The region is traditionally described as 'eight counties', " +
        "based on demographics and economic ties: Imperial, Los Angeles, Orange, Riverside, San Bernardino, San Diego, " +
        "Santa Barbara, and Ventura. The more extensive 10-county definition, including Kern and San Luis Obispo counties, " +
        "is also used based on historical political divisions. Southern California is a major economic center for " +
        "the state of California and the United States.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test9_1Story() throws IOException {
        String content = "Formed in November 1990 by the equal merger of Sky Television and British Satellite " +
        "Broadcasting, BSkyB became the UK's largest digital subscription television company. Following BSkyB's " +
        "2014 acquisition of Sky Italia and a majority 90.04% interest in Sky Deutschland in November 2014, its " +
        "holding company British Sky Broadcasting Group plc changed its name to Sky plc. The United Kingdom " +
        "operations also changed the company name from British Sky Broadcasting Limited to Sky UK Limited, still " +
        "trading as Sky.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test10_1Story() throws IOException {
        String content = "The economy of Victoria is highly diversified: service sectors including financial and " +
        "property services, health, education, wholesale, retail, hospitality and manufacturing constitute the " +
        "majority of employment. Victoria's total gross state product (GSP) is ranked second in Australia, although " +
        "Victoria is ranked fourth in terms of GSP per capita because of its limited mining activity. Culturally, " +
        "Melbourne is home to a number of museums, art galleries and theatres and is also described as the 'sporting " +
        "capital of Australia'. The Melbourne Cricket Ground is the largest stadium in Australia, and the host of " +
        "the 1956 Summer Olympics and the 2006 Commonwealth Games. The ground is also considered the 'spiritual home' " +
        "of Australian cricket and Australian rules football, and hosts the grand final of the Australian Football " +
        "League (AFL) each year, usually drawing crowds of over 95,000 people. Victoria includes eight public " +
        "universities, with the oldest, the University of Melbourne, having been founded in 1853.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test11_1Story() throws IOException {
        String content = "Huguenot numbers peaked near an estimated two million by 1562, concentrated mainly in the " +
        "southern and central parts of France, about one-eighth the number of French Catholics. As Huguenots gained " +
        "influence and more openly displayed their faith, Catholic hostility grew, in spite of increasingly liberal " +
        "political concessions and edicts of toleration from the French crown. A series of religious conflicts " +
        "followed, known as the Wars of Religion, fought intermittently from 1562 to 1598. The wars finally ended " +
        "with the granting of the Edict of Nantes, which granted the Huguenots substantial religious, political and " +
        "military autonomy.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test12_1Story() throws IOException {
        String content = "Steam engines are external combustion engines, where the working fluid is separate from the " +
        "combustion products. Non-combustion heat sources such as solar power, nuclear power or geothermal energy may " +
        "be used. The ideal thermodynamic cycle used to analyze this process is called the Rankine cycle. In the cycle, " +
        "water is heated and transforms into steam within a boiler operating at a high pressure. When expanded through " +
        "pistons or turbines, mechanical work is done. The reduced-pressure steam is then condensed and pumped back " +
        "into the boiler.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test13_1Story() throws IOException {
        String content = "Oxygen is a chemical element with symbol O and atomic number 8. It is a member of the " +
        "chalcogen group on the periodic table and is a highly reactive nonmetal and oxidizing agent that readily " +
        "forms compounds (notably oxides) with most elements. By mass, oxygen is the third-most abundant element " +
        "in the universe, after hydrogen and helium. At standard temperature and pressure, two atoms of the element " +
        "bind to form dioxygen, a colorless and odorless diatomic gas with the formula O2. Diatomic oxygen gas " +
        "constitutes 20.8% of the Earth's atmosphere. However, monitoring of atmospheric oxygen levels show a global " +
        "downward trend, because of fossil-fuel burning. Oxygen is the most abundant element by mass in the Earth's " +
        "crust as part of oxide compounds such as silicon dioxide, making up almost half of the crust's mass.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test14_1Story() throws IOException {
        String content = "The 1973 oil crisis began in October 1973 when the members of the Organization of Arab " +
        "Petroleum Exporting Countries (OAPEC, consisting of the Arab members of OPEC plus Egypt and Syria) " +
        "proclaimed an oil embargo. By the end of the embargo in March 1974, the price of oil had risen from US$3 " +
        "per barrel to nearly $12 globally; US prices were significantly higher. The embargo caused an oil crisis, " +
        "or 'shock', with many short and long-term effects on global politics and the global economy. It was " +
        "later called the 'first oil shock', followed by the 1979 oil crisis, termed the 'second oil shock.'";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test15_1Story() throws IOException {
        String content = "The Apollo program, also known as Project Apollo, was the third United States human " +
        "spaceflight program carried out by the National Aeronautics and Space Administration (NASA), which " +
        "accomplished landing the first humans on the Moon from 1969 to 1972. First conceived during Dwight D. " +
        "Eisenhower's administration as a three-man spacecraft to follow the one-man Project Mercury which put " +
        "the first Americans in space, Apollo was later dedicated to President John F. Kennedy's national goal " +
        "of 'landing a man on the Moon and returning him safely to the Earth' by the end of the 1960s, which he " +
        "proposed in a May 25, 1961, address to Congress. Project Mercury was followed by the two-man Project " +
        "Gemini (1962–66). The first manned flight of Apollo was in 1968.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test16_1Story() throws IOException {
        String content = "European Union law is a body of treaties and legislation, such as Regulations and " +
        "Directives, which have direct effect or indirect effect on the laws of European Union member states. " +
        "The three sources of European Union law are primary law, secondary law and supplementary law. The " +
        "main sources of primary law are the Treaties establishing the European Union. Secondary sources " +
        "include regulations and directives which are based on the Treaties. The legislature of the European " +
        "Union is principally composed of the European Parliament and the Council of the European Union, " +
        "which under the Treaties may establish secondary law to pursue the objective set out in the Treaties.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test17_1Story() throws IOException {
        String content = "The Amazon rainforest, Amazonía or usually Amazonia; French: Forêt amazonienne; Dutch: " +
        "Amazoneregenwoud), also known in English as Amazonia or the Amazon Jungle, is a moist broadleaf forest that " +
        "covers most of the Amazon basin of South America. This basin encompasses 7,000,000 square kilometres " +
        "(2,700,000 sq mi), of which 5,500,000 square kilometres (2,100,000 sq mi) are covered by the rainforest. " +
        "This region includes territory belonging to nine nations. The majority of the forest is contained within " +
        "Brazil, with 60% of the rainforest, followed by Peru with 13%, Colombia with 10%, and with minor amounts " +
        "in Venezuela, Ecuador, Bolivia, Guyana, Suriname and French Guiana. States or departments in four nations " +
        "contain 'Amazonas' in their names. The Amazon represents over half of the planet's remaining rainforests, " +
        "and comprises the largest and most biodiverse tract of tropical rainforest in the world, with an estimated " +
        "390 billion individual trees divided into 16,000 species.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test18_1Story() throws IOException {
        String content = "Ctenophora, commonly known as comb jellies) is a phylum of animals that live in marine " +
        "waters worldwide. Their most distinctive feature is the ‘combs’ – groups of cilia which they use for " +
        "swimming – they are the largest animals that swim by means of cilia. Adults of various species range from " +
        "a few millimeters to 1.5 m (4 ft 11 in) in size. Like cnidarians, their bodies consist of a mass of jelly, " +
        "with one layer of cells on the outside and another lining the internal cavity. In ctenophores, these layers " +
        "are two cells deep, while those in cnidarians are only one cell deep. Some authors combined ctenophores " +
        "and cnidarians in one phylum, Coelenterata, as both groups rely on water flow through the body cavity for " +
        "both digestion and respiration. Increasing awareness of the differences persuaded more recent authors to " +
        "classify them as separate phyla.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test19_1Story() throws IOException {
        String content = "Fresno, the county seat of Fresno County, is a city in the U.S. state of California. " +
        "As of 2015, the city's population was 520,159, making it the fifth-largest city in California, " +
        "the largest inland city in California and the 34th-largest in the nation. Fresno is in the center of the " +
        "San Joaquin Valley and is the largest city in the Central Valley, which contains the San Joaquin Valley. " +
        "It is approximately 220 miles (350 km) northwest of Los Angeles, 170 miles (270 km) south of the state " +
        "capital, Sacramento, or 185 miles (300 km) south of San Francisco. The name Fresno means 'ash tree' in " +
        "Spanish, and an ash leaf is featured on the city's flag.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test20_1Story() throws IOException {
        String content = "Starting in the late 1950s, American computer scientist Paul Baran developed the concept " +
        "Distributed Adaptive Message Block Switching with the goal to provide a fault-tolerant, efficient routing " +
        "method for telecommunication messages as part of a research program at the RAND Corporation, funded by the " +
        "US Department of Defense. This concept contrasted and contradicted the theretofore established principles of " +
        "pre-allocation of network bandwidth, largely fortified by the development of telecommunications in the Bell " +
        "System. The new concept found little resonance among network implementers until the independent work of " +
        "Donald Davies at the National Physical Laboratory (United Kingdom) (NPL) in the late 1960s. Davies is credited " +
        "with coining the modern name packet switching and inspiring numerous packet switching networks in Europe " +
        "in the decade following, including the incorporation of the concept in the early ARPANET in the United States.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test21_1Story() throws IOException {
        String content = "The Black Death is thought to have originated in the arid plains of Central Asia, where it " +
        "then travelled along the Silk Road, reaching Crimea by 1343. From there, it was most likely carried by Oriental " +
        "rat fleas living on the black rats that were regular passengers on merchant ships. Spreading throughout the Mediterranean " +
        "and Europe, the Black Death is estimated to have killed 30–60% of Europe's total population. In total, the plague reduced " +
        "the world population from an estimated 450 million down to 350–375 million in the 14th century. The world population as a " +
        "whole did not recover to pre-plague levels until the 17th century. The plague recurred occasionally in Europe until the " +
        "19th century.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test22_1Story() throws IOException {
        String content = "There are three major types of rock: igneous, sedimentary, and metamorphic. The rock cycle " +
        "is an important concept in geology which illustrates the relationships between these three types of rock, " +
        "and magma. When a rock crystallizes from melt (magma and/or lava), it is an igneous rock. This rock can be " +
        "weathered and eroded, and then redeposited and lithified into a sedimentary rock, or be turned into a " +
        "metamorphic rock due to heat and pressure that change the mineral content of the rock which gives it a " +
        "characteristic fabric. The sedimentary rock can then be subsequently turned into a metamorphic rock due " +
        "to heat and pressure and is then weathered, eroded, deposited, and lithified, ultimately becoming a " +
        "sedimentary rock. Sedimentary rock may also be re-eroded and redeposited, and metamorphic rock may also " +
        "undergo additional metamorphism. All three types of rocks may be re-melted; when this happens, a new magma " +
        "is formed, from which an igneous rock may once again crystallize.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test23_1Story() throws IOException {
        String content = "Newcastle upon Tyne, commonly known as Newcastle, is a city in Tyne and Wear, North " +
        "East England, 103 miles (166 km) south of Edinburgh and 277 miles (446 km) north of London on the northern " +
        "bank of the River Tyne, 8.5 mi (13.7 km) from the North Sea. Newcastle is the most populous city in the " +
        "North East and Tyneside the eighth most populous conurbation in the United Kingdom. Newcastle is a member " +
        "of the English Core Cities Group and is a member of the Eurocities network of European cities. " +
        "Newcastle was part of the county of Northumberland until 1400, when it became a county itself, a status " +
        "it retained until becoming part of Tyne and Wear in 1974.[not in citation given] The regional nickname " +
        "and dialect for people from Newcastle and the surrounding area is Geordie.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test24_1Story() throws IOException {
        String content = "The Victoria and Albert Museum (often abbreviated as the V&A), London, is the world's " +
        "largest museum of decorative arts and design, housing a permanent collection of over 4.5 million objects. " +
        "It was founded in 1852 and named after Queen Victoria and Prince Albert. The V&A is located in the Brompton " +
        "district of the Royal Borough of Kensington and Chelsea, in an area that has become known as 'Albertopolis' " +
        "because of its association with Prince Albert, the Albert Memorial and the major cultural institutions with " +
        "which he was associated. These include the Natural History Museum, the Science Museum and the Royal Albert Hall. " +
        "The museum is a non-departmental public body sponsored by the Department for Culture, Media and Sport. " +
        "Like other national British museums, entrance to the museum has been free since 2001.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test25_1Story() throws IOException {
        String content = "The American Broadcasting Company (ABC) (stylized in its logo as abc since 1957) is an " +
        "American commercial broadcast television network that is owned by the Disney–ABC Television Group, " +
        "a subsidiary of Disney Media Networks division of The Walt Disney Company. The network is part of the " +
        "Big Three television networks. The network is headquartered on Columbus Avenue and West 66th Street " +
        "in Manhattan, with additional major offices and production facilities in New York City, Los Angeles " +
        "and Burbank, California.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test26_1Story() throws IOException {
        String content = "He came to power by uniting many of the nomadic tribes of Northeast Asia. After founding " +
        "the Mongol Empire and being proclaimed 'Genghis Khan', he started the Mongol invasions that resulted in the " +
        "conquest of most of Eurasia. These included raids or invasions of the Qara Khitai, Caucasus, Khwarezmid Empire, " +
        "Western Xia and Jin dynasties. These campaigns were often accompanied by wholesale massacres of the " +
        "civilian populations – especially in the Khwarezmian and Xia controlled lands. By the end of his life, " +
        "the Mongol Empire occupied a substantial portion of Central Asia and China.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test27_1Story() throws IOException {
        String content = "The word pharmacy is derived from its root word pharma which was a term used since the " +
        "15th–17th centuries. However, the original Greek roots from pharmakos imply sorcery or even poison. " +
        "In addition to pharma responsibilities, the pharma offered general medical advice and a range of " +
        "services that are now performed solely by other specialist practitioners, such as surgery and midwifery. " +
        "The pharma (as it was referred to) often operated through a retail shop which, in addition to ingredients " +
        "for medicines, sold tobacco and patent medicines. Often the place that did this was called an apothecary " +
        "and several languages have this as the dominant term, though their practices are more akin " +
        "to a modern pharmacy, in English the term apothecary would today be seen as outdated or only " +
        "approproriate if herbal remedies were on offer to a large extent. The pharmas also used many other " +
        "herbs not listed. The Greek word Pharmakeia (Greek: φαρμακεία) derives from pharmakon, meaning 'drug', " +
        "'medicine' (or 'poison').[n 1]";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test28_1Story() throws IOException {
        String content = "The immune system is a system of many biological structures and processes within an " +
        "organism that protects against disease. To function properly, an immune system must detect a wide variety " +
        "of agents, known as pathogens, from viruses to parasitic worms, and distinguish them from the organism's " +
        "own healthy tissue. In many species, the immune system can be classified into subsystems, such as the " +
        "innate immune system versus the adaptive immune system, or humoral immunity versus cell-mediated immunity. " +
        "In humans, the blood–brain barrier, blood–cerebrospinal fluid barrier, and similar fluid–brain barriers " +
        "separate the peripheral immune system from the neuroimmune system which protects the brain.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test29_1Story() throws IOException {
        String content = "One of its earliest massive implementations was brought about by Egyptians against the British occupation " +
        "in the 1919 Revolution. Civil disobedience is one of the many ways people have rebelled against what they " +
        "deem to be unfair laws. It has been used in many nonviolent resistance movements in India (Gandhi's campaigns " +
        "for independence from the British Empire), in Czechoslovakia's Velvet Revolution and in East Germany to oust " +
        "their communist governments, In South Africa in the fight against apartheid, in the American Civil Rights " +
        "Movement, in the Singing Revolution to bring independence to the Baltic countries from the Soviet Union, " +
        "recently with the 2003 Rose Revolution in Georgia and the 2004 Orange Revolution in Ukraine, among other " +
        "various movements worldwide.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test30_1Story() throws IOException {
        String content = "Construction is the process of constructing a building or infrastructure. Construction " +
        "differs from manufacturing in that manufacturing typically involves mass production of similar items without " +
        "a designated purchaser, while construction typically takes place on location for a known client. Construction " +
        "as an industry comprises six to nine percent of the gross domestic product of developed countries. Construction " +
        "starts with planning,[citation needed] design, and financing and continues until the project is built and " +
        "ready for use.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test31_1Story() throws IOException {
        String content = "Private schools, also known as independent schools, non-governmental, or nonstate schools, " +
        "are not administered by local, state or national governments; thus, they retain the right to select their " +
        "students and are funded in whole or in part by charging their students tuition, rather than relying on " +
        "mandatory taxation through public (government) funding; at some private schools students may be able to get " +
        "a scholarship, which makes the cost cheaper, depending on a talent the student may have (e.g. sport scholarship," +
        " art scholarship, academic scholarship), financial need, or tax credit scholarships that might be available.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test32_1Story() throws IOException {
        String content = "Established originally by the Massachusetts legislature and soon thereafter named for John Harvard " +
        "(its first benefactor), Harvard is the United States' oldest institution of higher learning, and the Harvard Corporation " +
        "(formally, the President and Fellows of Harvard College) is its first chartered corporation. Although never formally " +
        "affiliated with any denomination, the early College primarily trained Congregationalist and Unitarian clergy. Its " +
        "curriculum and student body were gradually secularized during the 18th century, and by the 19th century Harvard had " +
        "emerged as the central cultural establishment among Boston elites. Following the American Civil War, President Charles " +
        "W. Eliot's long tenure (1869–1909) transformed the college and affiliated professional schools into a modern research " +
        "university; Harvard was a founding member of the Association of American Universities in 1900. James Bryant Conant led the " +
        "university through the Great Depression and World War II and began to reform the curriculum and liberalize admissions " +
        "after the war. The undergraduate college became coeducational after its 1977 merger with Radcliffe College.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test33_1Story() throws IOException {
        String content = "Jacksonville is the largest city by population in the U.S. state of Florida, and the largest " +
        "city by area in the contiguous United States. It is the county seat of Duval County, with which the city " +
        "government consolidated in 1968. Consolidation gave Jacksonville its great size and placed most of its " +
        "metropolitan population within the city limits; with an estimated population of 853,382 in 2014, it is the " +
        "most populous city proper in Florida and the Southeast, and the 12th most populous in the United States. " +
        "Jacksonville is the principal city in the Jacksonville metropolitan area, with a population of 1,345,596 in 2010.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test34_1Story() throws IOException {
        String content = "A study by the World Institute for Development Economics Research at United Nations University " +
        "reports that the richest 1% of adults alone owned 40% of global assets in the year 2000. The three richest people " +
        "in the world possess more financial assets than the lowest 48 nations combined. The combined wealth of the " +
        "'10 million dollar millionaires' grew to nearly $41 trillion in 2008. A January 2014 report by Oxfam claims that " +
        "the 85 wealthiest individuals in the world have a combined wealth equal to that of the bottom 50% of the world's " +
        "population, or about 3.5 billion people. According to a Los Angeles Times analysis of the report, the wealthiest " +
        "1% owns 46% of the world's wealth; the 85 richest people, a small part of the wealthiest 1%, own about 0.7% of the " +
        "human population's wealth, which is the same as the bottom half of the population. More recently, in January 2015, " +
        "Oxfam reported that the wealthiest 1 percent will own more than half of the global wealth by 2016. An October 2014 " +
        "study by Credit Suisse also claims that the top 1% now own nearly half of the world's wealth and that the accelerating " +
        "disparity could trigger a recession. In October 2015, Credit Suisse published a study which shows global inequality " +
        "continues to increase, and that half of the world's wealth is now in the hands of those in the top percentile, whose " +
        "assets each exceed $759,900. A 2016 report by Oxfam claims that the 62 wealthiest individuals own as much wealth as the " +
        "poorer half of the global population combined. Oxfam's claims have however been questioned on the basis of the methodology " +
        "used: by using net wealth (adding up assets and subtracting debts), the Oxfam report, for instance, finds that there are more " +
        "poor people in the United States and Western Europe than in China (due to a greater tendency to take on debts).[unreliable source?]" +
        "[unreliable source?] Anthony Shorrocks, the lead author of the Credit Suisse report which is one of the sources of Oxfam's data, " +
        "considers the criticism about debt to be a 'silly argument' and 'a non-issue . . . a diversion.'";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test35_1Story() throws IOException {
        String content = "Doctor Who is a British science-fiction television programme produced by the BBC since 1963. " +
        "The programme depicts the adventures of the Doctor, a Time Lord—a space and time-travelling humanoid alien. " +
        "He explores the universe in his TARDIS, a sentient time-travelling space ship. Its exterior appears as a blue " +
        "British police box, which was a common sight in Britain in 1963 when the series first aired. Accompanied by " +
        "companions, the Doctor combats a variety of foes, while working to save civilisations and help people in need.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test36_1Story() throws IOException {
        String content = "The University of Chicago, is a private research university in Chicago. The university, established " +
        "in 1890, consists of The College, various graduate programs, interdisciplinary committees organized into four academic " +
        "research divisions and seven professional schools. Beyond the arts and sciences, Chicago is also well known for its " +
        "professional schools, which include the Pritzker School of Medicine, the University of Chicago Booth School of Business, " +
        "the Law School, the School of Social Service Administration, the Harris School of Public Policy Studies, the Graham " +
        "School of Continuing Liberal and Professional Studies and the Divinity School. The university currently enrolls " +
        "approximately 5,000 students in the College and around 15,000 students overall.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test37_1Story() throws IOException {
        String content = "The Yuan dynasty, officially the Great Yuan, was the empire or ruling dynasty of China established by Kublai Khan, " +
        "leader of the Mongolian Borjigin clan. Although the Mongols had ruled territories including today's North China " +
        "for decades, it was not until 1271 that Kublai Khan officially proclaimed the dynasty in the traditional Chinese style. " +
        "His realm was, by this point, isolated from the other khanates and controlled most of present-day China and its surrounding " +
        "areas, including modern Mongolia and Korea. It was the first foreign dynasty to rule all of China and lasted until 1368, " +
        "after which its Genghisid rulers returned to their Mongolian homeland and continued to rule the Northern Yuan dynasty. " +
        "Some of the Mongolian Emperors of the Yuan mastered the Chinese language, while others only used their native language " +
        "(i.e. Mongolian) and the 'Phags-pa script.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test38_1Story() throws IOException {
        String content = "Kenya, officially the Republic of Kenya, is a country in Africa and a founding member of " +
        "the East African Community (EAC). Its capital and largest city is Nairobi. Kenya's territory lies on the " +
        "equator and overlies the East African Rift covering a diverse and expansive terrain that extends roughly " +
        "from Lake Victoria to Lake Turkana (formerly called Lake Rudolf) and further south-east to the Indian Ocean. " +
        "It is bordered by Tanzania to the south, Uganda to the west, South Sudan to the north-west, Ethiopia to the " +
        "north and Somalia to the north-east. Kenya covers 581,309 km2 (224,445 sq mi), and had a population of " +
        "approximately 45 million people in July 2014.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test39_1Story() throws IOException {
        String content = "The Intergovernmental Panel on Climate Change (IPCC) is a scientific intergovernmental body " +
        "under the auspices of the United Nations, set up at the request of member governments. It was first established " +
        "in 1988 by two United Nations organizations, the World Meteorological Organization (WMO) and the United Nations " +
        "Environment Programme (UNEP), and later endorsed by the United Nations General Assembly through Resolution 43/53. " +
        "Membership of the IPCC is open to all members of the WMO and UNEP. The IPCC produces reports that support the " +
        "United Nations Framework Convention on Climate Change (UNFCCC), which is the main international treaty on climate " +
        "change. The ultimate objective of the UNFCCC is to 'stabilize greenhouse gas concentrations in the atmosphere " +
        "at a level that would prevent dangerous anthropogenic [i.e., human-induced] interference with the climate system'." +
        " IPCC reports cover 'the scientific, technical and socio-economic information relevant to understanding the " +
        "scientific basis of risk of human-induced climate change, its potential impacts and options for adaptation and " +
        "mitigation.'";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test40_1Story() throws IOException {
        String content = "Chloroplasts' main role is to conduct photosynthesis, where the photosynthetic pigment chlorophyll captures the energy " +
        "from sunlight and converts it and stores it in the energy-storage molecules ATP and NADPH while freeing oxygen from water. " +
        "They then use the ATP and NADPH to make organic molecules from carbon dioxide in a process known as the Calvin cycle. " +
        "Chloroplasts carry out a number of other functions, including fatty acid synthesis, much amino acid synthesis, and the " +
        "immune response in plants. The number of chloroplasts per cell varies from 1 in algae up to 100 in plants like Arabidopsis and wheat.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test41_1Story() throws IOException {
        String content = "A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself. " +
        "A natural number greater than 1 that is not a prime number is called a composite number. For example, 5 is prime because 1 and 5 " +
        "are its only positive integer factors, whereas 6 is composite because it has the divisors 2 and 3 in addition to 1 and 6. " +
        "The fundamental theorem of arithmetic establishes the central role of primes in number theory: any integer greater than 1 can be " +
        "expressed as a product of primes that is unique up to ordering. The uniqueness in this theorem requires excluding 1 as a prime because " +
        "one can include arbitrarily many instances of 1 in any factorization, e.g., 3, 1 · 3, 1 · 1 · 3, etc. are all valid factorizations of 3.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test42_1Story() throws IOException {
        String content = "The Rhine (Romansh: Rein, German: Rhein, French: le Rhin, Dutch: Rijn) is a European river that " +
        "begins in the Swiss canton of Graubünden in the southeastern Swiss Alps, forms part of the Swiss-Austrian, " +
        "Swiss-Liechtenstein border, Swiss-German and then the Franco-German border, then flows through the Rhineland " +
        "and eventually empties into the North Sea in the Netherlands. The biggest city on the river Rhine is Cologne, " +
        "Germany with a population of more than 1,050,000 people. It is the second-longest river in Central and " +
        "Western Europe (after the Danube), at about 1,230 km (760 mi),[note 2][note 1] with an average discharge of " +
        "about 2,900 m3/s (100,000 cu ft/s).";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test43_1Story() throws IOException {
        String content = "Following a referendum in 1997, in which the Scottish electorate voted for devolution, " +
        "the current Parliament was convened by the Scotland Act 1998, which sets out its powers as a devolved " +
        "legislature. The Act delineates the legislative competence of the Parliament – the areas in which it " +
        "can make laws – by explicitly specifying powers that are 'reserved' to the Parliament of the United Kingdom. " +
        "The Scottish Parliament has the power to legislate in all areas that are not explicitly reserved to Westminster. " +
        "The British Parliament retains the ability to amend the terms of reference of the Scottish Parliament, and " +
        "can extend or reduce the areas in which it can make laws. The first meeting of the new Parliament took place on " +
        "12 May 1999.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test44_1Story() throws IOException {
        String content = "Islamism, also known as Political Islam, is an Islamic revival movement often characterized by moral conservatism, literalism, " +
        "and the attempt 'to implement Islamic values in all spheres of life.' Islamism favors the reordering of government " +
        "and society in accordance with the Shari'a. The different Islamist movements have been described as 'oscillating " +
        "between two poles': at one end is a strategy of Islamization of society through state power seized by revolution " +
        "or invasion; at the other 'reformist' pole Islamists work to Islamize society gradually 'from the bottom up'. The " +
        "movements have 'arguably altered the Middle East more than any trend since the modern states gained independence', " +
        "redefining 'politics and even borders' according to one journalist (Robin Wright).";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test45_1Story() throws IOException {
        String content = "Imperialism is a type of advocacy of empire. Its name originated from the Latin word 'imperium', " +
        "which means to rule over large territories. Imperialism is 'a policy of extending a country's power and " +
        "influence through colonization, use of military force, or other means'). Imperialism has greatly shaped " +
        "the contemporary world. It has also allowed for the rapid spread of technologies and ideas. " +
        "The term imperialism has been applied to Western (and Japanese) political and economic dominance " +
        "especially in Asia and Africa in the 19th and 20th centuries. Its precise meaning continues to " +
        "be debated by scholars. Some writers, such as Edward Said, use the term more broadly to describe " +
        "any system of domination and subordination organised with an imperial center and a periphery.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test46_1Story() throws IOException {
        String content = "The United Methodist Church (UMC) is a mainline Protestant Methodist denomination. " +
        "In the 19th century its main predecessor was a leader in Evangelicalism. Founded in 1968 by the " +
        "union of the Methodist Church (USA) and the Evangelical United Brethren Church, the UMC traces " +
        "its roots back to the revival movement of John and Charles Wesley in England as well as the " +
        "Great Awakening in the United States. As such, the church's theological orientation is decidedly " +
        "Wesleyan. It embraces both liturgical and evangelical elements.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test47_1Story() throws IOException {
        String content = "The French and Indian War (1754–1763) was the North American theater of the worldwide " +
        "Seven Years' War. The war was fought between the colonies of British America and New France, " +
        "with both sides supported by military units from their parent countries of Great Britain and France, " +
        "as well as Native American allies. At the start of the war, the French North American colonies had a " +
        "population of roughly 60,000 European settlers, compared with 2 million in the British North American " +
        "colonies. The outnumbered French particularly depended on the Indians. Long in conflict, the metropole " +
        "nations declared war on each other in 1756, escalating the war from a regional affair into an " +
        "intercontinental conflict.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }

    @Test
    void Test48_1Story() throws IOException {
        String content = "Philosophers in antiquity used the concept of force in the study of stationary and moving objects and simple machines, " +
        "but thinkers such as Aristotle and Archimedes retained fundamental errors in understanding force. " +
        "In part this was due to an incomplete understanding of the sometimes non-obvious force of friction, " +
        "and a consequently inadequate view of the nature of natural motion. A fundamental error was the belief " +
        "that a force is required to maintain motion, even at a constant velocity. Most of the previous " +
        "misunderstandings about motion and force were eventually corrected by Galileo Galilei and Sir Isaac Newton. " +
        "With his mathematical insight, Sir Isaac Newton formulated laws of motion that were not improved-on for " +
        "nearly three hundred years. By the early 20th century, Einstein developed a theory of relativity that " +
        "correctly predicted the action of forces on objects with increasing momenta near the speed of light, " +
        "and also provided insight into the forces produced by gravitation and inertia.";
        StorageManager manager = new StorageManager();
        Pair<List<Rule>, List<Rule>> rulesPair = KnowledgeGeneration.RepresentKnowledge(manager, content);

        TreeSet<String> ruleString = new TreeSet<>();
        System.out.println("%-------------------------------------------------------%");
        System.out.println("%Story%");
        System.out.println("%-------------------------------------------------------%");
        for(Rule rule : rulesPair.getKey()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(97, ruleString.size());
    }
*/
    private void PrintRules(TreeSet<String> ruleString) {
        for(String rule : ruleString){
            System.out.println(String.format("%s.",rule));
        }
    }

}