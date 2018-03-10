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
        Assert.assertEquals(163, ruleString.size());

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
    void TestABCStory_1() throws IOException {
        String content = "The American Broadcasting Company (ABC), stylized in the network's logo as abc since 1957, is " +
        "an American commercial broadcast television network that is owned by the Disney_ABC_Television_Group, a subsidiary " +
        "of Disney_Media_Networks division of The_Walt_Disney_Company. The ABC network is part of The_Big_Three television " +
        "networks. The network is headquartered on Columbus_Avenue and West_66th_Street in Manhattan, with additional major " +
        "offices and production facilities in New_York_City, Los_Angeles and Burbank in California.";
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
        Assert.assertEquals(55, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(410, ruleString.size());
    }

    @Test
    void TestAmazonForestStory_1() throws IOException {
        String content = "The Amazon_rainforest, also known in English as Amazonia or the Amazon_Jungle, is a moist " +
        "broadleafed forest that covers most of the Amazon_basin of South_America. This basin encompasses 7,000,000 " +
        "square_kilometre, of which 5,500,000 square_kilometre are covered by the rainforest. The Amazon_Rainforest " +
        "includes territory belonging to nine nations. The majority of the forest is contained within Brazil with 60 " +
        "percent of the rainforest, followed by Peru with 13 percent, Colombia with 10 percent, and with minor amounts " +
        "in Venezuela, Ecuador, Bolivia, Guyana, Suriname and French_Guiana. States or departments in four nations contain " +
        "the word, Amazonas, in their name. The Amazon represents over half of the planet's remaining rainforests, and " +
        "comprises of the largest and most biodiverse tract of tropical rainforest in the world, with an estimated 390 " +
        "billion individual trees divided into 16,000 species.";
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
        Assert.assertEquals(123, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(604, ruleString.size());
    }

    @Test
    void TestApolloStory_1() throws IOException {
        String content = "The Apollo program, also known as Project_Apollo, was the third United_States human spaceflight " +
        "program carried out by the National_Aeronautics_and_Space_Administration (NASA), which accomplished landing the " +
        "first humans on the Moon from 1969 to 1972. First conceived during Dwight_D_Eisenhower's administration as a " +
        "three-man spacecraft to follow the one-man Project_Mercury, which put the first Americans in space, Apollo was " +
        "later dedicated to president John_F_Kennedy's national goal of 'landing a man on the Moon and returning him safely " +
        "to the Earth' by the end of the 1960s, which John_F_Kennedy proposed in an address to Congress in May 25 1961. " +
        "Project_Mercury was followed by the two-man Project_Gemini (1962 – 1966). The first manned flight of Apollo was in 1968.";
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
        Assert.assertEquals(95, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(652, ruleString.size());
    }

    @Test
    void TestCloroplastsStory_1() throws IOException {
        String content = "Chloroplasts's main role is to conduct photosynthesis, where the photosynthetic pigment, " +
        "chlorophyll, captures the energy from sunlight and converts the energy, and stores the energy in the " +
        "energy-storage molecules, ATP and NADPH, while freeing oxygen from water. Chloroplasts then use the ATP and " +
        "NADPH to make organic molecules from carbon_dioxide in a process known as the Calvin_Cycle. Chloroplasts carry " +
        "out a number_of_functions, like fatty_acid_synthesis, amino_acid_synthesis, and the immune_response in plants. " +
        "The number_of_chloroplasts, per cell, varies from 1 in algae, up_to 100 in plants such as Arabidopsis and wheat.";
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
        Assert.assertEquals(81, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(383, ruleString.size());
    }

    @Test
    void TestComplexityStory_1() throws IOException {
        String content = "Computational_complexity_theory is a branch of the theory_of_computation, in theoretical " +
        "computer_science, the branch focuses on classifying computational problems according to the problem's " +
        "inherent difficulty, and relating complexity_classes to each other. A computational problem is understood " +
        "to be a task that is in principle amenable to being solved by a computer, which is equivalent to stating " +
        "that the problem may be solved by mechanical_application of mathematical steps such as an algorithm.";
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
        Assert.assertEquals(49, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(268, ruleString.size());
    }

    @Test
    void TestCtenophoraStory_1() throws IOException {
        String content = "Ctenophora, commonly known as comb_jellies, is a phylum of animals that live in marine_waters " +
        "worldwide. Ctenophora's most distinctive feature is the combs, groups of cilia, which the Ctenophora use for " +
        "swimming. Ctenophora are the largest animals that swim by means of cilia. Adults of various species range from " +
        "a few millimeters to 1.5 meters in size. Like cnidarians, Ctenophora's bodies consist of a mass_of_jelly, with " +
        "one layer of cells on the outside and another lining the internal cavity. In ctenophores, the layers of " +
        "mass_of_jelly are two_cells_deep, while the layers in cnidarians are only one_cell_deep. Some authors combined " +
        "ctenophores and cnidarians in one phylum, Coelenterata, as both groups rely on water flow through the body cavity " +
        "for both digestion and respiration. Increasing awareness of the differences persuaded more recent authors to " +
        "classify ctenophores and cnidarians as separate phyla.";
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
        Assert.assertEquals(111, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(581, ruleString.size());
    }

    @Test
    void TestEuropeanUnionLawStory_1() throws IOException {
        String content = "European_Union_Law is a body of treaties and legislation, such as Regulations_and_Directives, " +
        "which have direct_effect or indirect_effect on the laws of European_Union member states. The three sources of " +
        "European_Union_Law are primary_law, secondary_law and supplementary_law. The main sources of primary_law are the " +
        "Treaties establishing the European_Union. Secondary sources include regulations and directives, which are based " +
        "on the Treaties. The legislature of the European_Union is principally composed of the European_Parliament and the " +
        "Council_of_the_European_Union, which under the Treaties may establish secondary_law to pursue the objective set " +
        "out in the Treaties.";
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
        Assert.assertEquals(327, ruleString.size());
    }

    @Test
    void TestGenghisKhanStory_1() throws IOException {
        String content = "Genghis_Khan came to power by uniting many of the nomadic tribes of Northeast_Asia. After " +
        "founding the Mongol_Empire and being proclaimed as Genghis_Khan, Genghis_Khan started the Mongol invasion that " +
        "resulted in the conquest of most of Eurasia. The Mongol invasions included raids or invasions of the Qara_Khitai, " +
        "Caucasus, Khwarezmid_Empire, Western_Xia and Jin dynasties. The Mongol invasion campaigns were often accompanied " +
        "by wholesale massacres of the civilian populations especially in the Khwarezmian and Xia lands. By the end of " +
        "Genghis_Khan's life, the Mongol_Empire occupied a substantial portion of Central_Asia and China.";
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
        Assert.assertEquals(64, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(531, ruleString.size());
    }

    @Test
    void TestGeologyStory_1() throws IOException {
        String content = "Geology has three major types of rocks namely, igneous, sedimentary, and metamorphic. The " +
        "rock_cycle is an important concept in geology, which illustrates the relationships between these three types " +
        "of rock, and magma. When a rock crystallizes from magma or lava, the rock is an igneous rock. This rock can " +
        "be weathered and eroded, and then redeposited and lithified into a sedimentary rock, or be turned into a " +
        "metamorphic rock due to heat and pressure that change the mineral content of the rock which gives the rock a " +
        "characteristic fabric. The sedimentary rock can then be subsequently turned into a metamorphic rock due to heat " +
        "and pressure and is then weathered, eroded, deposited, and lithified, ultimately becoming a sedimentary rock. " +
        "Sedimentary rock may also be re-eroded and redeposited, and metamorphic rock may also undergo additional " +
        "metamorphism. All three types of rocks may be re-melted. When the rocks are melted, a new magma is formed, from " +
        "the magma an igneous_rock may once again crystallize.";
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
        Assert.assertEquals(103, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(329, ruleString.size());
    }

    @Test
    void TestImmuneSystemStory_1() throws IOException {
        String content = "The immune_system is a system of many biological structures and processes within an organism " +
        "that protects against disease. To function properly, an immune_system must detect a wide variety of agents, " +
        "known as pathogens, from viruses to parasitic worms, and distinguish pathogens from the organism's own healthy " +
        "tissue. In many species, the immune_system can be classified into subsystems, such as the innate_immune_system " +
        "versus the adaptive_immune_system, or humoral_immunity versus cell_mediated_immunity. In humans, the " +
        "blood–brain barrier, blood–cerebrospinal_fluid barrier, and similar fluid–brain barriers separate the peripheral " +
        "immune_system from the neuroimmune_system, which protects the brain.";
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
        Assert.assertEquals(67, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(387, ruleString.size());
    }

    @Test
    void TestKenyaStory_1() throws IOException {
        String content = "Kenya, officially the Republic_of_Kenya, is a country in Africa and a founding member of the " +
        "East_African_Community (EAC). Kenya's capital and largest city is Nairobi. Kenya's territory lies on the " +
        "equator and overlies the East_African_Rift covering a diverse and expansive terrain that extends roughly from " +
        "Lake_Victoria to Lake_Turkana, which was formerly called as Lake_Rudolf, and further south-east to the " +
        "Indian_Ocean. Kenya is bordered by Tanzania to the south, Uganda to the west, South_Sudan to the north-west, " +
        "Ethiopia to the north, and Somalia to the north-east. Kenya covers 581,309 square_kilometre, and had a " +
        "population of approximately 45 million people in July 2014.";
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
        Assert.assertEquals(79, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(342, ruleString.size());
    }

    @Test
    void TestMartin_LutherStory_1() throws IOException {
        String content = "Martin_Luther (10 November 1483 – 18 February 1546) was a German_professor of theology, " +
        "composer, priest, former_monk and a seminal_figure in the Protestant_Reformation. Martin_Luther came to reject " +
        "several teachings and practices of the Late_Medieval_Catholic_Church. Martin_Luther strongly disputed the " +
        "claim that freedom from God's punishment for sin could be purchased with money. Martin_Luther proposed an " +
        "academic discussion of the power and usefulness of indulgences in Martin_Luther's proposition, " +
        "Ninety_Five_Theses, of 1517. Martin_Luther's refusal to retract all of Martin_Luther's writings at the demand " +
        "of Pope_Leo_X in 1520 and the Holy_Roman_Emperor_Charles_V at the Diet_of_Worms in 1521 resulted in " +
        "Martin_Luther's excommunication by the Pope and condemnation as an outlaw by the Emperor.";
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
        Assert.assertEquals(92, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(503, ruleString.size());
    }

    @Test
    void TestNikolaTeslaStory_1() throws IOException {
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
        Assert.assertEquals(44, ruleString.size());

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
    void TestNormanStory_1() throws IOException {
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
    void TestOxygenStory_1() throws IOException {
        String content = "Oxygen is a chemical element with symbol_O and atomic_number 8. Oxygen is a member of the chalcogen_group on the " +
        "periodic_table and is a highly reactive nonmetal, and oxidizing agent that readily forms compounds, like oxides, with most elements. " +
        "By mass, oxygen is the third-most abundant element in the universe, after hydrogen and helium. At standard temperature and pressure, " +
        "two atoms of oxygen bind to form dioxygen, a colorless and odorless diatomic gas with the formula_O2. Diatomic oxygen_gas constitutes " +
        "20.8 percent of the Earth's atmosphere. Monitoring of atmospheric oxygen_levels show a global downward trend, because of the burning " +
        "of fossil-fuel. Oxygen is the most abundant element by mass in the Earth's crust as part of oxide_compounds, such as silicon_dioxide, " +
        "making up almost half of the crust's mass.";
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
        Assert.assertEquals(98, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(579, ruleString.size());
    }

    @Test
    void TestRhineStory_1() throws IOException {
        String content = "The Rhine, is a European river that begins in the Swiss_canton of Graubünden in the " +
        "southeastern_Swiss_Alps, forms part of the Swiss-Austrian border, Swiss-Liechtenstein border, Swiss-German " +
        "and then the Franco-German border, then flows through the Rhineland and eventually empties into the North_Sea " +
        "in the Netherlands. The biggest city on the river, Rhine, is Cologne in Germany with a population of more than " +
        "1,050,000 people. The Rhine is the second-longest river in Central and Western_Europe, after the Danube, at " +
        "about 1,230 kilometre, with an average discharge of about 2,900 m3/s.";
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
        Assert.assertEquals(58, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(405, ruleString.size());
    }

    @Test
    void TestSouthern_CaliforniaStory_1() throws IOException {
        String content = "Southern_California, often abbreviated as SoCal, is a geographic and cultural region that " +
        "generally comprises California's southernmost 10 counties. Southern_California is, traditionally described as " +
        "\"eight_counties\", based on demographics and economic ties. The eight counties are Imperial, Los_Angeles, " +
        "Orange, Riverside, San_Bernardino, San_Diego, Santa_Barbara, and Ventura. The more extensive 10-county " +
        "definition, including Kern and San_Luis_Obispo counties, is also used based on historical political divisions. " +
        "Southern_California is a major economic center for the state_of_California and the United_States.";
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
        Assert.assertEquals(73, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(451, ruleString.size());
    }

    @Test
    void TestSteamEngineStory_1() throws IOException {
        String content = "Steam_engines are external combustion_engines, where the working fluid is separate from the combustion products. " +
        "Non-combustion heat sources such as solar power, nuclear power or geothermal energy may be used. The ideal thermodynamic cycle " +
        "used to analyze this process is called the Rankine cycle. In the Rankine cycle, water is heated and transforms into steam within a boiler " +
        "operating at a high pressure. When expanded through pistons or turbines, mechanical work is done. The reduced-pressure steam is " +
        "then condensed and pumped back into the boiler.";
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
        Assert.assertEquals(73, ruleString.size());

        System.out.println("%%-------------------------------------------------------%%");
        System.out.println("%%Ontology%%");
        System.out.println("%%-------------------------------------------------------%%");
        ruleString = new TreeSet<>();
        for(Rule rule : rulesPair.getValue()){
            ruleString.add(rule.toString());
        }
        PrintRules(ruleString);
        Assert.assertEquals(500, ruleString.size());
    }

    @Test
    void TestSuperBowlStory_1() throws IOException {
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
        Assert.assertEquals(83, ruleString.size());

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
    void TestWarsawStory_1() throws IOException {
        String content = "One_of_the_most_famous people born in Warsaw was Maria_Sklodowska_Curie, Maria_Curie " +
        "achieved international recognition for Maria_Curie's research on radioactivity and was the first " +
        "female recipient of the Nobel Prize. The famous musicians include Wladyslaw_Szpilman and Frederic_Chopin. " +
        "Though Chopin was born in the village of Zelazowa_Wola about 60_km from Warsaw, Chopin moved to the city " +
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
        Assert.assertEquals(57, ruleString.size());

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

    private void PrintRules(TreeSet<String> ruleString) {
        for(String rule : ruleString){
            System.out.println(String.format("%s.",rule));
        }
    }
}