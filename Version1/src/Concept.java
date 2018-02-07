import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by dhruv on 10/15/2017.
 */
public class Concept {
    public String baseConcept;
    public String sense;
    public HashMap<String, List<Concept>> hypernymMap;
    public HashMap<String, List<Concept>> meronymPartMap;
    public HashMap<String, List<Concept>> meronymMemberMap;
    public HashMap<String, List<Concept>> meronymSubstanceMap;

    public Concept(String word, String sense){
        String baseConcept = word.toLowerCase();
        baseConcept = GetSanitizedString(baseConcept);
        this.sense = sense.replaceAll("\\.", "_");
        this.baseConcept = baseConcept;
        this.hypernymMap = new HashMap<>();
        this.meronymPartMap = new HashMap<>();
        this.meronymMemberMap = new HashMap<>();
        this.meronymSubstanceMap = new HashMap<>();
    }

    public static String GetSanitizedString(String baseConcept) {
        baseConcept = baseConcept.replaceAll("-", "_");
        baseConcept = baseConcept.replaceAll("'", "");
        baseConcept = baseConcept.replaceAll("\\.", "");
        if(baseConcept.charAt(0) >= '0' && baseConcept.charAt(0) <= '9'){
            baseConcept = "TIME_" + baseConcept;
        }
        return baseConcept;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Concept concept = (Concept) o;
        return baseConcept.equals(concept.baseConcept) && sense.equals(concept.sense);
    }

    @Override
    public int hashCode() {
        return baseConcept.hashCode();
    }

    public void SetHypernym(String sense, Concept childConcept) {
        List<Concept> hypernymList = new ArrayList<>();
        if(this.hypernymMap.containsKey(sense)){
            hypernymList = this.hypernymMap.get(sense);
        }

        hypernymList.add(childConcept);
        this.hypernymMap.put(sense, hypernymList);
    }

    public void SetMeronym(String sense, Concept childConcept, MeronymTypes meronymType) {
        HashMap<String, List<Concept>> meronymMap = GetMeronymMap(meronymType);
        List<Concept> meronymList = new ArrayList<>();
        if(meronymMap.containsKey(sense)){
            meronymList = meronymMap.get(sense);
        }

        if(!meronymList.contains(childConcept)) {
            meronymList.add(childConcept);
        }

        meronymMap.put(sense, meronymList);
    }

    private HashMap<String, List<Concept>> GetMeronymMap(MeronymTypes meronymType) {
        switch (meronymType){
            case MERONYM_PART: return this.meronymPartMap;
            case MERONYM_MEMBER: return this.meronymMemberMap;
            case MERONYM_SUBSTANCE: return this.meronymSubstanceMap;
        }

        return null;
    }
}
