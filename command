grep ,ID,, pr-data.csv | grep -v \\[ | shuf --random-source=<(while :; do echo shengan4@illinois.edu; done) | head | tee result.log

# cayenne build fail

# hive
standalone-metastore/metastore-server
org.apache.hadoop.hive.metastore.TestEmbeddedHiveMetaStore.testPartition
mvn install -pl standalone-metastore/metastore-server -am -DskipTests | tee mvn-install.log
mvn -pl standalone-metastore/metastore-server test -Dtest=org.apache.hadoop.hive.metastore.TestEmbeddedHiveMetaStore#testPartition


# hadoop passed
hadoop-hdfs-project/hadoop-hdfs-client
org.apache.hadoop.hdfs.web.oauth2.TestRefreshTokenTimeBasedTokenRefresher.refreshUrlIsCorrect
mvn install -pl hadoop-hdfs-project/hadoop-hdfs-client -am -DskipTests | tee mvn-install.log
mvn -pl hadoop-hdfs-project/hadoop-hdfs-client test -Dtest=org.apache.hadoop.hdfs.web.oauth2.TestRefreshTokenTimeBasedTokenRefresher#refreshUrlIsCorrect
mvn -pl hadoop-hdfs-project/hadoop-hdfs-client edu.illinois:nondex-maven-plugin:1.1.2:nondex -Dtest=org.apache.hadoop.hdfs.web.oauth2.TestRefreshTokenTimeBasedTokenRefresher#refreshUrlIsCorrect -DnondexRuns=10 | tee rst_10Runs.log

# ormlite
mvn -pl . test -Dtest=com.j256.ormlite.support.ReflectionDatabaseConnectionProxyFactoryTest#testBasic
mvn -pl . edu.illinois:nondex-maven-plugin:1.1.2:nondex -Dtest=com.j256.ormlite.support.ReflectionDatabaseConnectionProxyFactoryTest#testBasic -DnondexRuns=10 | tee rst_10Runs.log

# spring-data-rest-webmvc no error
mvn install -pl spring-data-rest-webmvc -am -DskipTests | tee mvn-install.log
mvn -pl spring-data-rest-webmvc test -Dtest=org.springframework.data.rest.webmvc.RepositoryRestHandlerMappingUnitTests#resolvesCorsConfigurationFromRequestUri
mvn -pl spring-data-rest-webmvc edu.illinois:nondex-maven-plugin:1.1.2:nondex -Dtest=org.springframework.data.rest.webmvc.RepositoryRestHandlerMappingUnitTests#resolvesCorsConfigurationFromRequestUri  -DnondexRuns=10 | tee rst_10Runs.log

# Stanford NLP build fail
edu.stanford.nlp.util.CollectionValuedMapTest.testAddRemove
mvn install -pl . -am -DskipTests | tee mvn-install.log
mvn -pl . test -Dtest=edu.stanford.nlp.util.CollectionValuedMapTest#testAddRemove
mvn -pl . edu.illinois:nondex-maven-plugin:1.1.2:nondex -Dtest=edu.stanford.nlp.util.CollectionValuedMapTest#testAddRemove -DnondexRuns=10 | tee rst_10Runs.log

# junit no such test
generators
mvn install -pl generators -am -DskipTests | tee mvn-install.log

# esper regression-run build fail
com.espertech.esper.regressionrun.suite.context.TestSuiteContext.testContextKeySegmented
mvn install -pl regression-run -am -DskipTests | tee mvn-install.log

# dropwizard
dropwizard-views-freemarker
io.dropwizard.views.freemarker.MultipleContentTypeTest.testJsonContentType
mvn install -pl dropwizard-views-freemarker -am -DskipTests | tee mvn-install.log
mvn -pl dropwizard-views-freemarker test -Dtest=io.dropwizard.views.freemarker.MultipleContentTypeTest#testJsonContentType
mvn -pl dropwizard-views-freemarker edu.illinois:nondex-maven-plugin:1.1.2:nondex -Dtest=io.dropwizard.views.freemarker.MultipleContentTypeTest#testJsonContentType  -DnondexRuns=10 | tee rst_10Runs.log

# JSON-java build fail
.
org.json.junit.JSONMLTest#testToJSONObject_reversibility
mvn install -pl . -am -DskipTests | tee mvn-install.log

# typescript-generator passed
typescript-generator-core
cz.habarta.typescript.generator.NumberEnumTest.testNonConstAnnotationEnum
mvn install -pl typescript-generator-core -am -DskipTests | tee mvn-install.log
mvn -pl typescript-generator-core test -Dtest=cz.habarta.typescript.generator.NumberEnumTest#testNonConstAnnotationEnum
mvn -pl typescript-generator-core edu.illinois:nondex-maven-plugin:1.1.2:nondex -Dtest=cz.habarta.typescript.generator.NumberEnumTest#testNonConstAnnotationEnum -DnondexRuns=10 | tee rst_10Runs.log

# Chronicle-Wire worked
.
net.openhft.chronicle.wire.MarshallableTest.testReset
mvn install -pl . -am -DskipTests | tee mvn-install.log
mvn -pl . test -Dtest=net.openhft.chronicle.wire.MarshallableTest#testReset
mvn -pl . edu.illinois:nondex-maven-plugin:1.1.2:nondex -Dtest=net.openhft.chronicle.wire.MarshallableTest#testReset -DnondexRuns=10 | tee rst_10Runs.log
