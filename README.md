# ak-tools
AIRR Knowledge toolkit
## Related group tools
### iReceptor related tools
A list of related and useful tools that have been developed through the iReceptor project:

- [ADC Monitoring](https://sfu-ireceptor.github.io/ADC-API-Plots/ADC-API-Plots/index.html): Active monitoring of performance of ADC repositories.
- [ADC Search](https://github.com/sfu-ireceptor/sandbox/tree/master/adc-search): Command line tools for searching the ADC via the ADC API.
- [AIRR Spec Flatten](https://github.com/sfu-ireceptor/sandbox/tree/master/airr-spec-flatten): Python code that traveses the AIRR YAML spec and creates a TSV file with columns that describe each AIRR field. This is used extensively within the iReceptor suite of software and makes it "easy" to add/remove fields from the data model for both the Gateway and the Turnkey.
- [AIRR to Cell](https://github.com/sfu-ireceptor/sandbox/tree/master/airr-to-cell): Code to transform AIRR Cell/GEX data to other formats such as 10X and h5ad, which are more widely supported than the AIRR formats in other tools.
- [ADC CDR3 search](https://github.com/sfu-ireceptor/sandbox/tree/master/cdr3-search): Code that takes a list of CDR3s (e.g. from IEDB or VDJdb) and searches the ADC for those CDR3s.
- [MHC to AIRR](https://github.com/sfu-ireceptor/sandbox/tree/master/mhc2airr): Utility to take a TSV file of subject level MHC and generate AIRR Repertoire Metadata JSON that is suitable for loading into the iReceptor Turnkey (using the update_metadata.sh script).
- [ADC Ontology Check](https://github.com/sfu-ireceptor/sandbox/tree/master/ontology-check): Utility that checks a provided list of fields to see if they adhere to CURIE and appropriate ontology ID/labels. The tool reads in the AIRR Spec, processes the Ontology section to extract the ontology lookup, and then for each repertoire in a repository checks to see if the fields have correct ontology IDs and labels.
- [Tapis 3 Tools](https://github.com/sfu-ireceptor/sandbox/tree/master/tapis3): Set of tools that can be used from the command line to access the iReceptor Tapis 3 tenant.

