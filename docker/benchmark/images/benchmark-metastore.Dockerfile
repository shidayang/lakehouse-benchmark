# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
ARG BENCHMARK_VERSION

FROM arctic163/benchmark-hadoop:${BENCHMARK_VERSION}

ARG HIVE_VERSION
ARG MYSQL_VERSION

ARG APACHE_MIRROR
ARG MAVEN_MIRROR

ENV HIVE_HOME=/opt/hive
ENV HIVE_CONF_DIR=/etc/hive/conf

RUN set -x && \
    wget -q ${APACHE_MIRROR}/hive/hive-${HIVE_VERSION}/apache-hive-${HIVE_VERSION}-bin.tar.gz && \
    tar -xzf apache-hive-${HIVE_VERSION}-bin.tar.gz -C /opt && \
    ln -s /opt/apache-hive-${HIVE_VERSION}-bin ${HIVE_HOME} && \
    rm apache-hive-${HIVE_VERSION}-bin.tar.gz && \
    MYSQL_JAR_NAME=mysql-connector-java && \
    wget -q ${MAVEN_MIRROR}/mysql/${MYSQL_JAR_NAME}/${MYSQL_VERSION}/${MYSQL_JAR_NAME}-${MYSQL_VERSION}.jar -P ${HIVE_HOME}/lib && \
    mkdir ${HIVE_HOME}/auxlib && \
    wget -q https://github.com/NetEase/lakehouse-benchmark-ingestion/releases/download/1.0/hudi-hadoop-mr-bundle-0.11.1.jar -P ${HIVE_HOME}/auxlib

ENTRYPOINT ["/opt/hive/bin/hive", "--service", "metastore"]
