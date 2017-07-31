// This is a generated file (see the discoveryapis_generator project).

library googleapis.container.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client container/v1';

/**
 * The Google Container Engine API is used for building and managing container
 * based applications, powered by the open source Kubernetes technology.
 */
class ContainerApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  ContainerApi(http.Client client, {core.String rootUrl: "https://container.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesResourceApi get zones => new ProjectsZonesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsZonesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersResourceApi get clusters => new ProjectsZonesClustersResourceApi(_requester);
  ProjectsZonesOperationsResourceApi get operations => new ProjectsZonesOperationsResourceApi(_requester);

  ProjectsZonesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns configuration info about the Container Engine service.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available)
   * to return operations for.
   *
   * Completes with a [ServerConfig].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ServerConfig> getServerconfig(core.String projectId, core.String zone) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/serverconfig';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ServerConfig.fromJson(data));
  }

}


class ProjectsZonesClustersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersNodePoolsResourceApi get nodePools => new ProjectsZonesClustersNodePoolsResourceApi(_requester);

  ProjectsZonesClustersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Sets the addons of a specific cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to upgrade.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> addons(SetAddonsConfigRequest request, core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/addons';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Completes master IP rotation.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://developers.google.com/console/help/new/#projectnumber).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> completeIpRotation(CompleteIPRotationRequest request, core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + ':completeIpRotation';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Creates a cluster, consisting of the specified number and type of Google
   * Compute Engine instances.
   *
   * By default, the cluster is created in the project's
   * [default network](/compute/docs/networks-and-firewalls#networks).
   *
   * One firewall is added for the cluster. After cluster creation,
   * the cluster creates routes for each node to allow the containers
   * on that node to communicate with all other instances in the
   * cluster.
   *
   * Finally, an entry is added to the project's global metadata indicating
   * which CIDR range is being used by the cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> create(CreateClusterRequest request, core.String projectId, core.String zone) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Deletes the cluster, including the Kubernetes endpoint and all worker
   * nodes.
   *
   * Firewalls and routes that were configured during cluster creation
   * are also deleted.
   *
   * Other Google Compute Engine resources that might be in use by the cluster
   * (e.g. load balancer resources) will not be deleted if they weren't present
   * at the initial create time.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to delete.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Gets the details of a specific cluster.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to retrieve.
   *
   * Completes with a [Cluster].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Cluster> get(core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Cluster.fromJson(data));
  }

  /**
   * Enables or disables the ABAC authorization mechanism on a cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to update.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> legacyAbac(SetLegacyAbacRequest request, core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/legacyAbac';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Lists all clusters owned by a project in either the specified zone or all
   * zones.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides, or "-" for all zones.
   *
   * Completes with a [ListClustersResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListClustersResponse> list(core.String projectId, core.String zone) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListClustersResponse.fromJson(data));
  }

  /**
   * Sets the locations of a specific cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to upgrade.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> locations(SetLocationsRequest request, core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/locations';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets the logging service of a specific cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to upgrade.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> logging(SetLoggingServiceRequest request, core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/logging';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Updates the master of a specific cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to upgrade.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> master(UpdateMasterRequest request, core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/master';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets the monitoring service of a specific cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to upgrade.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> monitoring(SetMonitoringServiceRequest request, core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/monitoring';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets labels on a cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://developers.google.com/console/help/new/#projectnumber).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> resourceLabels(SetLabelsRequest request, core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/resourceLabels';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Used to set master auth materials. Currently supports :-
   * Changing the admin password of a specific cluster.
   * This can be either via password generation or explicitly set the password.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to upgrade.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setMasterAuth(SetMasterAuthRequest request, core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + ':setMasterAuth';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Enables/Disables Network Policy for a cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://developers.google.com/console/help/new/#projectnumber).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setNetworkPolicy(SetNetworkPolicyRequest request, core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + ':setNetworkPolicy';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Start master IP rotation.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://developers.google.com/console/help/new/#projectnumber).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> startIpRotation(StartIPRotationRequest request, core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + ':startIpRotation';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Updates the settings of a specific cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to upgrade.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> update(UpdateClusterRequest request, core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class ProjectsZonesClustersNodePoolsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesClustersNodePoolsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Sets the autoscaling settings of a specific node pool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to upgrade.
   *
   * [nodePoolId] - The name of the node pool to upgrade.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> autoscaling(SetNodePoolAutoscalingRequest request, core.String projectId, core.String zone, core.String clusterId, core.String nodePoolId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/nodePools/' + commons.Escaper.ecapeVariable('$nodePoolId') + '/autoscaling';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Creates a node pool for a cluster.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://developers.google.com/console/help/new/#projectnumber).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> create(CreateNodePoolRequest request, core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/nodePools';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Deletes a node pool from a cluster.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://developers.google.com/console/help/new/#projectnumber).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster.
   *
   * [nodePoolId] - The name of the node pool to delete.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String projectId, core.String zone, core.String clusterId, core.String nodePoolId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/nodePools/' + commons.Escaper.ecapeVariable('$nodePoolId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the node pool requested.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://developers.google.com/console/help/new/#projectnumber).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster.
   *
   * [nodePoolId] - The name of the node pool.
   *
   * Completes with a [NodePool].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<NodePool> get(core.String projectId, core.String zone, core.String clusterId, core.String nodePoolId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/nodePools/' + commons.Escaper.ecapeVariable('$nodePoolId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new NodePool.fromJson(data));
  }

  /**
   * Lists the node pools for a cluster.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://developers.google.com/console/help/new/#projectnumber).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster.
   *
   * Completes with a [ListNodePoolsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListNodePoolsResponse> list(core.String projectId, core.String zone, core.String clusterId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/nodePools';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListNodePoolsResponse.fromJson(data));
  }

  /**
   * Roll back the previously Aborted or Failed NodePool upgrade.
   * This will be an no-op if the last upgrade successfully completed.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to rollback.
   *
   * [nodePoolId] - The name of the node pool to rollback.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> rollback(RollbackNodePoolUpgradeRequest request, core.String projectId, core.String zone, core.String clusterId, core.String nodePoolId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/nodePools/' + commons.Escaper.ecapeVariable('$nodePoolId') + ':rollback';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets the NodeManagement options for a node pool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to update.
   *
   * [nodePoolId] - The name of the node pool to update.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setManagement(SetNodePoolManagementRequest request, core.String projectId, core.String zone, core.String clusterId, core.String nodePoolId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/nodePools/' + commons.Escaper.ecapeVariable('$nodePoolId') + '/setManagement';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets the size of a specific node pool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to update.
   *
   * [nodePoolId] - The name of the node pool to update.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setSize(SetNodePoolSizeRequest request, core.String projectId, core.String zone, core.String clusterId, core.String nodePoolId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/nodePools/' + commons.Escaper.ecapeVariable('$nodePoolId') + '/setSize';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Updates the version and/or image type of a specific node pool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [clusterId] - The name of the cluster to upgrade.
   *
   * [nodePoolId] - The name of the node pool to upgrade.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> update(UpdateNodePoolRequest request, core.String projectId, core.String zone, core.String clusterId, core.String nodePoolId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (clusterId == null) {
      throw new core.ArgumentError("Parameter clusterId is required.");
    }
    if (nodePoolId == null) {
      throw new core.ArgumentError("Parameter nodePoolId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/clusters/' + commons.Escaper.ecapeVariable('$clusterId') + '/nodePools/' + commons.Escaper.ecapeVariable('$nodePoolId') + '/update';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class ProjectsZonesOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsZonesOperationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Cancels the specified operation.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the operation resides.
   *
   * [operationId] - The server-assigned `name` of the operation.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> cancel(CancelOperationRequest request, core.String projectId, core.String zone, core.String operationId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (operationId == null) {
      throw new core.ArgumentError("Parameter operationId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/operations/' + commons.Escaper.ecapeVariable('$operationId') + ':cancel';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets the specified operation.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   *
   * [operationId] - The server-assigned `name` of the operation.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> get(core.String projectId, core.String zone, core.String operationId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (operationId == null) {
      throw new core.ArgumentError("Parameter operationId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/operations/' + commons.Escaper.ecapeVariable('$operationId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Lists all operations in a project in a specific zone or all zones.
   *
   * Request parameters:
   *
   * [projectId] - The Google Developers Console [project ID or project
   * number](https://support.google.com/cloud/answer/6158840).
   *
   * [zone] - The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available)
   * to return operations for, or `-` for all zones.
   *
   * Completes with a [ListOperationsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListOperationsResponse> list(core.String projectId, core.String zone) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/operations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }

}



/** AcceleratorConfig represents a Hardware Accelerator request. */
class AcceleratorConfig {
  /** The number of the accelerator cards exposed to an instance. */
  core.String acceleratorCount;
  /**
   * The accelerator type resource name. List of supported accelerators
   * [here](/compute/docs/gpus/#Introduction)
   */
  core.String acceleratorType;

  AcceleratorConfig();

  AcceleratorConfig.fromJson(core.Map _json) {
    if (_json.containsKey("acceleratorCount")) {
      acceleratorCount = _json["acceleratorCount"];
    }
    if (_json.containsKey("acceleratorType")) {
      acceleratorType = _json["acceleratorType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (acceleratorCount != null) {
      _json["acceleratorCount"] = acceleratorCount;
    }
    if (acceleratorType != null) {
      _json["acceleratorType"] = acceleratorType;
    }
    return _json;
  }
}

/**
 * Configuration for the addons that can be automatically spun up in the
 * cluster, enabling additional functionality.
 */
class AddonsConfig {
  /**
   * Configuration for the horizontal pod autoscaling feature, which
   * increases or decreases the number of replica pods a replication controller
   * has based on the resource usage of the existing pods.
   */
  HorizontalPodAutoscaling horizontalPodAutoscaling;
  /**
   * Configuration for the HTTP (L7) load balancing controller addon, which
   * makes it easy to set up HTTP load balancers for services in a cluster.
   */
  HttpLoadBalancing httpLoadBalancing;
  /** Configuration for the Kubernetes Dashboard. */
  KubernetesDashboard kubernetesDashboard;

  AddonsConfig();

  AddonsConfig.fromJson(core.Map _json) {
    if (_json.containsKey("horizontalPodAutoscaling")) {
      horizontalPodAutoscaling = new HorizontalPodAutoscaling.fromJson(_json["horizontalPodAutoscaling"]);
    }
    if (_json.containsKey("httpLoadBalancing")) {
      httpLoadBalancing = new HttpLoadBalancing.fromJson(_json["httpLoadBalancing"]);
    }
    if (_json.containsKey("kubernetesDashboard")) {
      kubernetesDashboard = new KubernetesDashboard.fromJson(_json["kubernetesDashboard"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (horizontalPodAutoscaling != null) {
      _json["horizontalPodAutoscaling"] = (horizontalPodAutoscaling).toJson();
    }
    if (httpLoadBalancing != null) {
      _json["httpLoadBalancing"] = (httpLoadBalancing).toJson();
    }
    if (kubernetesDashboard != null) {
      _json["kubernetesDashboard"] = (kubernetesDashboard).toJson();
    }
    return _json;
  }
}

/**
 * AutoUpgradeOptions defines the set of options for the user to control how
 * the Auto Upgrades will proceed.
 */
class AutoUpgradeOptions {
  /**
   * [Output only] This field is set when upgrades are about to commence
   * with the approximate start time for the upgrades, in
   * [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
   */
  core.String autoUpgradeStartTime;
  /**
   * [Output only] This field is set when upgrades are about to commence
   * with the description of the upgrade.
   */
  core.String description;

  AutoUpgradeOptions();

  AutoUpgradeOptions.fromJson(core.Map _json) {
    if (_json.containsKey("autoUpgradeStartTime")) {
      autoUpgradeStartTime = _json["autoUpgradeStartTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (autoUpgradeStartTime != null) {
      _json["autoUpgradeStartTime"] = autoUpgradeStartTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    return _json;
  }
}

/** CancelOperationRequest cancels a single operation. */
class CancelOperationRequest {

  CancelOperationRequest();

  CancelOperationRequest.fromJson(core.Map _json) {
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    return _json;
  }
}

/** CidrBlock contains an optional name and one CIDR block. */
class CidrBlock {
  /** cidr_block must be specified in CIDR notation. */
  core.String cidrBlock;
  /** display_name is an optional field for users to identify CIDR blocks. */
  core.String displayName;

  CidrBlock();

  CidrBlock.fromJson(core.Map _json) {
    if (_json.containsKey("cidrBlock")) {
      cidrBlock = _json["cidrBlock"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (cidrBlock != null) {
      _json["cidrBlock"] = cidrBlock;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    return _json;
  }
}

/** Configuration for client certificates on the cluster. */
class ClientCertificateConfig {
  /** Issue a client certificate. */
  core.bool issueClientCertificate;

  ClientCertificateConfig();

  ClientCertificateConfig.fromJson(core.Map _json) {
    if (_json.containsKey("issueClientCertificate")) {
      issueClientCertificate = _json["issueClientCertificate"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (issueClientCertificate != null) {
      _json["issueClientCertificate"] = issueClientCertificate;
    }
    return _json;
  }
}

/** A Google Container Engine cluster. */
class Cluster {
  /** Configurations for the various addons available to run in the cluster. */
  AddonsConfig addonsConfig;
  /**
   * The IP address range of the container pods in this cluster, in
   * [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
   * notation (e.g. `10.96.0.0/14`). Leave blank to have
   * one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
   */
  core.String clusterIpv4Cidr;
  /**
   * [Output only] The time the cluster was created, in
   * [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
   */
  core.String createTime;
  /** [Output only] The current software version of the master endpoint. */
  core.String currentMasterVersion;
  /** [Output only] The number of nodes currently in the cluster. */
  core.int currentNodeCount;
  /**
   * [Output only] The current version of the node software components.
   * If they are currently at multiple versions because they're in the process
   * of being upgraded, this reflects the minimum version of all nodes.
   */
  core.String currentNodeVersion;
  /** An optional description of this cluster. */
  core.String description;
  /**
   * Kubernetes alpha features are enabled on this cluster. This includes alpha
   * API groups (e.g. v1alpha1) and features that may not be production ready in
   * the kubernetes version of the master and nodes.
   * The cluster has no SLA for uptime and master/node upgrades are disabled.
   * Alpha enabled clusters are automatically deleted thirty days after
   * creation.
   */
  core.bool enableKubernetesAlpha;
  /**
   * [Output only] The IP address of this cluster's master endpoint.
   * The endpoint can be accessed from the internet at
   * `https://username:password@endpoint/`.
   *
   * See the `masterAuth` property of this resource for username and
   * password information.
   */
  core.String endpoint;
  /**
   * [Output only] The time the cluster will be automatically
   * deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
   */
  core.String expireTime;
  /**
   * The initial Kubernetes version for this cluster.  Valid versions are those
   * found in validMasterVersions returned by getServerConfig.  The version can
   * be upgraded over time; such upgrades are reflected in
   * currentMasterVersion and currentNodeVersion.
   */
  core.String initialClusterVersion;
  /**
   * The number of nodes to create in this cluster. You must ensure that your
   * Compute Engine <a href="/compute/docs/resource-quotas">resource quota</a>
   * is sufficient for this number of instances. You must also have available
   * firewall and routes quota.
   * For requests, this field should only be used in lieu of a
   * "node_pool" object, since this configuration (along with the
   * "node_config") will be used to create a "NodePool" object with an
   * auto-generated name. Do not use this and a node_pool at the same time.
   */
  core.int initialNodeCount;
  /**
   * [Output only] The resource URLs of [instance
   * groups](/compute/docs/instance-groups/) associated with this
   * cluster.
   */
  core.List<core.String> instanceGroupUrls;
  /** Configuration for cluster IP allocation. */
  IPAllocationPolicy ipAllocationPolicy;
  /** The fingerprint of the set of labels for this cluster. */
  core.String labelFingerprint;
  /** Configuration for the legacy ABAC authorization mode. */
  LegacyAbac legacyAbac;
  /**
   * The list of Google Compute Engine
   * [locations](/compute/docs/zones#available) in which the cluster's nodes
   * should be located.
   */
  core.List<core.String> locations;
  /**
   * The logging service the cluster should use to write logs.
   * Currently available options:
   *
   * * `logging.googleapis.com` - the Google Cloud Logging service.
   * * `none` - no logs will be exported from the cluster.
   * * if left as an empty string,`logging.googleapis.com` will be used.
   */
  core.String loggingService;
  /** The authentication information for accessing the master endpoint. */
  MasterAuth masterAuth;
  /**
   * Master authorized networks is a Beta feature.
   * The configuration options for master authorized networks feature.
   */
  MasterAuthorizedNetworksConfig masterAuthorizedNetworksConfig;
  /**
   * The monitoring service the cluster should use to write metrics.
   * Currently available options:
   *
   * * `monitoring.googleapis.com` - the Google Cloud Monitoring service.
   * * `none` - no metrics will be exported from the cluster.
   * * if left as an empty string, `monitoring.googleapis.com` will be used.
   */
  core.String monitoringService;
  /**
   * The name of this cluster. The name must be unique within this project
   * and zone, and can be up to 40 characters with the following restrictions:
   *
   * * Lowercase letters, numbers, and hyphens only.
   * * Must start with a letter.
   * * Must end with a number or a letter.
   */
  core.String name;
  /**
   * The name of the Google Compute Engine
   * [network](/compute/docs/networks-and-firewalls#networks) to which the
   * cluster is connected. If left unspecified, the `default` network
   * will be used.
   */
  core.String network;
  /** Configuration options for the NetworkPolicy feature. */
  NetworkPolicy networkPolicy;
  /**
   * Parameters used in creating the cluster's nodes.
   * See `nodeConfig` for the description of its properties.
   * For requests, this field should only be used in lieu of a
   * "node_pool" object, since this configuration (along with the
   * "initial_node_count") will be used to create a "NodePool" object with an
   * auto-generated name. Do not use this and a node_pool at the same time.
   * For responses, this field will be populated with the node configuration of
   * the first node pool.
   *
   * If unspecified, the defaults are used.
   */
  NodeConfig nodeConfig;
  /**
   * [Output only] The size of the address space on each node for hosting
   * containers. This is provisioned from within the `container_ipv4_cidr`
   * range.
   */
  core.int nodeIpv4CidrSize;
  /**
   * The node pools associated with this cluster.
   * This field should not be set if "node_config" or "initial_node_count" are
   * specified.
   */
  core.List<NodePool> nodePools;
  /**
   * The resource labels for the cluster to use to annotate any related
   * Google Compute Engine resources.
   */
  core.Map<core.String, core.String> resourceLabels;
  /** [Output only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * [Output only] The IP address range of the Kubernetes services in
   * this cluster, in
   * [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
   * notation (e.g. `1.2.3.4/29`). Service addresses are
   * typically put in the last `/16` from the container CIDR.
   */
  core.String servicesIpv4Cidr;
  /**
   * [Output only] The current status of this cluster.
   * Possible string values are:
   * - "STATUS_UNSPECIFIED" : Not set.
   * - "PROVISIONING" : The PROVISIONING state indicates the cluster is being
   * created.
   * - "RUNNING" : The RUNNING state indicates the cluster has been created and
   * is fully
   * usable.
   * - "RECONCILING" : The RECONCILING state indicates that some work is
   * actively being done on
   * the cluster, such as upgrading the master or node software. Details can
   * be found in the `statusMessage` field.
   * - "STOPPING" : The STOPPING state indicates the cluster is being deleted.
   * - "ERROR" : The ERROR state indicates the cluster may be unusable. Details
   * can be found in the `statusMessage` field.
   */
  core.String status;
  /**
   * [Output only] Additional information about the current status of this
   * cluster, if available.
   */
  core.String statusMessage;
  /**
   * The name of the Google Compute Engine
   * [subnetwork](/compute/docs/subnetworks) to which the
   * cluster is connected.
   */
  core.String subnetwork;
  /**
   * [Output only] The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the cluster
   * resides.
   */
  core.String zone;

  Cluster();

  Cluster.fromJson(core.Map _json) {
    if (_json.containsKey("addonsConfig")) {
      addonsConfig = new AddonsConfig.fromJson(_json["addonsConfig"]);
    }
    if (_json.containsKey("clusterIpv4Cidr")) {
      clusterIpv4Cidr = _json["clusterIpv4Cidr"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("currentMasterVersion")) {
      currentMasterVersion = _json["currentMasterVersion"];
    }
    if (_json.containsKey("currentNodeCount")) {
      currentNodeCount = _json["currentNodeCount"];
    }
    if (_json.containsKey("currentNodeVersion")) {
      currentNodeVersion = _json["currentNodeVersion"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("enableKubernetesAlpha")) {
      enableKubernetesAlpha = _json["enableKubernetesAlpha"];
    }
    if (_json.containsKey("endpoint")) {
      endpoint = _json["endpoint"];
    }
    if (_json.containsKey("expireTime")) {
      expireTime = _json["expireTime"];
    }
    if (_json.containsKey("initialClusterVersion")) {
      initialClusterVersion = _json["initialClusterVersion"];
    }
    if (_json.containsKey("initialNodeCount")) {
      initialNodeCount = _json["initialNodeCount"];
    }
    if (_json.containsKey("instanceGroupUrls")) {
      instanceGroupUrls = _json["instanceGroupUrls"];
    }
    if (_json.containsKey("ipAllocationPolicy")) {
      ipAllocationPolicy = new IPAllocationPolicy.fromJson(_json["ipAllocationPolicy"]);
    }
    if (_json.containsKey("labelFingerprint")) {
      labelFingerprint = _json["labelFingerprint"];
    }
    if (_json.containsKey("legacyAbac")) {
      legacyAbac = new LegacyAbac.fromJson(_json["legacyAbac"]);
    }
    if (_json.containsKey("locations")) {
      locations = _json["locations"];
    }
    if (_json.containsKey("loggingService")) {
      loggingService = _json["loggingService"];
    }
    if (_json.containsKey("masterAuth")) {
      masterAuth = new MasterAuth.fromJson(_json["masterAuth"]);
    }
    if (_json.containsKey("masterAuthorizedNetworksConfig")) {
      masterAuthorizedNetworksConfig = new MasterAuthorizedNetworksConfig.fromJson(_json["masterAuthorizedNetworksConfig"]);
    }
    if (_json.containsKey("monitoringService")) {
      monitoringService = _json["monitoringService"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("networkPolicy")) {
      networkPolicy = new NetworkPolicy.fromJson(_json["networkPolicy"]);
    }
    if (_json.containsKey("nodeConfig")) {
      nodeConfig = new NodeConfig.fromJson(_json["nodeConfig"]);
    }
    if (_json.containsKey("nodeIpv4CidrSize")) {
      nodeIpv4CidrSize = _json["nodeIpv4CidrSize"];
    }
    if (_json.containsKey("nodePools")) {
      nodePools = _json["nodePools"].map((value) => new NodePool.fromJson(value)).toList();
    }
    if (_json.containsKey("resourceLabels")) {
      resourceLabels = _json["resourceLabels"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("servicesIpv4Cidr")) {
      servicesIpv4Cidr = _json["servicesIpv4Cidr"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
    }
    if (_json.containsKey("subnetwork")) {
      subnetwork = _json["subnetwork"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (addonsConfig != null) {
      _json["addonsConfig"] = (addonsConfig).toJson();
    }
    if (clusterIpv4Cidr != null) {
      _json["clusterIpv4Cidr"] = clusterIpv4Cidr;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (currentMasterVersion != null) {
      _json["currentMasterVersion"] = currentMasterVersion;
    }
    if (currentNodeCount != null) {
      _json["currentNodeCount"] = currentNodeCount;
    }
    if (currentNodeVersion != null) {
      _json["currentNodeVersion"] = currentNodeVersion;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (enableKubernetesAlpha != null) {
      _json["enableKubernetesAlpha"] = enableKubernetesAlpha;
    }
    if (endpoint != null) {
      _json["endpoint"] = endpoint;
    }
    if (expireTime != null) {
      _json["expireTime"] = expireTime;
    }
    if (initialClusterVersion != null) {
      _json["initialClusterVersion"] = initialClusterVersion;
    }
    if (initialNodeCount != null) {
      _json["initialNodeCount"] = initialNodeCount;
    }
    if (instanceGroupUrls != null) {
      _json["instanceGroupUrls"] = instanceGroupUrls;
    }
    if (ipAllocationPolicy != null) {
      _json["ipAllocationPolicy"] = (ipAllocationPolicy).toJson();
    }
    if (labelFingerprint != null) {
      _json["labelFingerprint"] = labelFingerprint;
    }
    if (legacyAbac != null) {
      _json["legacyAbac"] = (legacyAbac).toJson();
    }
    if (locations != null) {
      _json["locations"] = locations;
    }
    if (loggingService != null) {
      _json["loggingService"] = loggingService;
    }
    if (masterAuth != null) {
      _json["masterAuth"] = (masterAuth).toJson();
    }
    if (masterAuthorizedNetworksConfig != null) {
      _json["masterAuthorizedNetworksConfig"] = (masterAuthorizedNetworksConfig).toJson();
    }
    if (monitoringService != null) {
      _json["monitoringService"] = monitoringService;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (networkPolicy != null) {
      _json["networkPolicy"] = (networkPolicy).toJson();
    }
    if (nodeConfig != null) {
      _json["nodeConfig"] = (nodeConfig).toJson();
    }
    if (nodeIpv4CidrSize != null) {
      _json["nodeIpv4CidrSize"] = nodeIpv4CidrSize;
    }
    if (nodePools != null) {
      _json["nodePools"] = nodePools.map((value) => (value).toJson()).toList();
    }
    if (resourceLabels != null) {
      _json["resourceLabels"] = resourceLabels;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (servicesIpv4Cidr != null) {
      _json["servicesIpv4Cidr"] = servicesIpv4Cidr;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (subnetwork != null) {
      _json["subnetwork"] = subnetwork;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/**
 * ClusterUpdate describes an update to the cluster. Exactly one update can
 * be applied to a cluster with each request, so at most one field can be
 * provided.
 */
class ClusterUpdate {
  /** Configurations for the various addons available to run in the cluster. */
  AddonsConfig desiredAddonsConfig;
  /**
   * The desired image type for the node pool.
   * NOTE: Set the "desired_node_pool" field as well.
   */
  core.String desiredImageType;
  /**
   * The desired list of Google Compute Engine
   * [locations](/compute/docs/zones#available) in which the cluster's nodes
   * should be located. Changing the locations a cluster is in will result
   * in nodes being either created or removed from the cluster, depending on
   * whether locations are being added or removed.
   *
   * This list must always include the cluster's primary zone.
   */
  core.List<core.String> desiredLocations;
  /**
   * Master authorized networks is a Beta feature.
   * The desired configuration options for master authorized networks feature.
   */
  MasterAuthorizedNetworksConfig desiredMasterAuthorizedNetworksConfig;
  /**
   * The Kubernetes version to change the master to. The only valid value is the
   * latest supported version. Use "-" to have the server automatically select
   * the latest version.
   */
  core.String desiredMasterVersion;
  /**
   * The monitoring service the cluster should use to write metrics.
   * Currently available options:
   *
   * * "monitoring.googleapis.com" - the Google Cloud Monitoring service
   * * "none" - no metrics will be exported from the cluster
   */
  core.String desiredMonitoringService;
  /**
   * Autoscaler configuration for the node pool specified in
   * desired_node_pool_id. If there is only one pool in the
   * cluster and desired_node_pool_id is not provided then
   * the change applies to that single node pool.
   */
  NodePoolAutoscaling desiredNodePoolAutoscaling;
  /**
   * The node pool to be upgraded. This field is mandatory if
   * "desired_node_version", "desired_image_family" or
   * "desired_node_pool_autoscaling" is specified and there is more than one
   * node pool on the cluster.
   */
  core.String desiredNodePoolId;
  /**
   * The Kubernetes version to change the nodes to (typically an
   * upgrade). Use `-` to upgrade to the latest version supported by
   * the server.
   */
  core.String desiredNodeVersion;

  ClusterUpdate();

  ClusterUpdate.fromJson(core.Map _json) {
    if (_json.containsKey("desiredAddonsConfig")) {
      desiredAddonsConfig = new AddonsConfig.fromJson(_json["desiredAddonsConfig"]);
    }
    if (_json.containsKey("desiredImageType")) {
      desiredImageType = _json["desiredImageType"];
    }
    if (_json.containsKey("desiredLocations")) {
      desiredLocations = _json["desiredLocations"];
    }
    if (_json.containsKey("desiredMasterAuthorizedNetworksConfig")) {
      desiredMasterAuthorizedNetworksConfig = new MasterAuthorizedNetworksConfig.fromJson(_json["desiredMasterAuthorizedNetworksConfig"]);
    }
    if (_json.containsKey("desiredMasterVersion")) {
      desiredMasterVersion = _json["desiredMasterVersion"];
    }
    if (_json.containsKey("desiredMonitoringService")) {
      desiredMonitoringService = _json["desiredMonitoringService"];
    }
    if (_json.containsKey("desiredNodePoolAutoscaling")) {
      desiredNodePoolAutoscaling = new NodePoolAutoscaling.fromJson(_json["desiredNodePoolAutoscaling"]);
    }
    if (_json.containsKey("desiredNodePoolId")) {
      desiredNodePoolId = _json["desiredNodePoolId"];
    }
    if (_json.containsKey("desiredNodeVersion")) {
      desiredNodeVersion = _json["desiredNodeVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (desiredAddonsConfig != null) {
      _json["desiredAddonsConfig"] = (desiredAddonsConfig).toJson();
    }
    if (desiredImageType != null) {
      _json["desiredImageType"] = desiredImageType;
    }
    if (desiredLocations != null) {
      _json["desiredLocations"] = desiredLocations;
    }
    if (desiredMasterAuthorizedNetworksConfig != null) {
      _json["desiredMasterAuthorizedNetworksConfig"] = (desiredMasterAuthorizedNetworksConfig).toJson();
    }
    if (desiredMasterVersion != null) {
      _json["desiredMasterVersion"] = desiredMasterVersion;
    }
    if (desiredMonitoringService != null) {
      _json["desiredMonitoringService"] = desiredMonitoringService;
    }
    if (desiredNodePoolAutoscaling != null) {
      _json["desiredNodePoolAutoscaling"] = (desiredNodePoolAutoscaling).toJson();
    }
    if (desiredNodePoolId != null) {
      _json["desiredNodePoolId"] = desiredNodePoolId;
    }
    if (desiredNodeVersion != null) {
      _json["desiredNodeVersion"] = desiredNodeVersion;
    }
    return _json;
  }
}

/**
 * CompleteIPRotationRequest moves the cluster master back into single-IP mode.
 */
class CompleteIPRotationRequest {

  CompleteIPRotationRequest();

  CompleteIPRotationRequest.fromJson(core.Map _json) {
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    return _json;
  }
}

/** CreateClusterRequest creates a cluster. */
class CreateClusterRequest {
  /**
   * A [cluster
   * resource](/container-engine/reference/rest/v1/projects.zones.clusters)
   */
  Cluster cluster;

  CreateClusterRequest();

  CreateClusterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("cluster")) {
      cluster = new Cluster.fromJson(_json["cluster"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (cluster != null) {
      _json["cluster"] = (cluster).toJson();
    }
    return _json;
  }
}

/** CreateNodePoolRequest creates a node pool for a cluster. */
class CreateNodePoolRequest {
  /** The node pool to create. */
  NodePool nodePool;

  CreateNodePoolRequest();

  CreateNodePoolRequest.fromJson(core.Map _json) {
    if (_json.containsKey("nodePool")) {
      nodePool = new NodePool.fromJson(_json["nodePool"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (nodePool != null) {
      _json["nodePool"] = (nodePool).toJson();
    }
    return _json;
  }
}

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request
 * or the response type of an API method. For instance:
 *
 *     service Foo {
 *       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
 *     }
 *
 * The JSON representation for `Empty` is empty JSON object `{}`.
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    return _json;
  }
}

/**
 * Configuration options for the horizontal pod autoscaling feature, which
 * increases or decreases the number of replica pods a replication controller
 * has based on the resource usage of the existing pods.
 */
class HorizontalPodAutoscaling {
  /**
   * Whether the Horizontal Pod Autoscaling feature is enabled in the cluster.
   * When enabled, it ensures that a Heapster pod is running in the cluster,
   * which is also used by the Cloud Monitoring service.
   */
  core.bool disabled;

  HorizontalPodAutoscaling();

  HorizontalPodAutoscaling.fromJson(core.Map _json) {
    if (_json.containsKey("disabled")) {
      disabled = _json["disabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (disabled != null) {
      _json["disabled"] = disabled;
    }
    return _json;
  }
}

/**
 * Configuration options for the HTTP (L7) load balancing controller addon,
 * which makes it easy to set up HTTP load balancers for services in a cluster.
 */
class HttpLoadBalancing {
  /**
   * Whether the HTTP Load Balancing controller is enabled in the cluster.
   * When enabled, it runs a small pod in the cluster that manages the load
   * balancers.
   */
  core.bool disabled;

  HttpLoadBalancing();

  HttpLoadBalancing.fromJson(core.Map _json) {
    if (_json.containsKey("disabled")) {
      disabled = _json["disabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (disabled != null) {
      _json["disabled"] = disabled;
    }
    return _json;
  }
}

/** Configuration for controlling how IPs are allocated in the cluster. */
class IPAllocationPolicy {
  /**
   * The IP address range for the cluster pod IPs. If this field is set, then
   * `cluster.cluster_ipv4_cidr` must be left blank.
   *
   * This field is only applicable when `use_ip_aliases` is true.
   *
   * Set to blank to have a range will be chosen with the default size.
   *
   * Set to /netmask (e.g. `/14`) to have a range be chosen with a specific
   * netmask.
   *
   * Set to a
   * [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
   * notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
   * `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
   * to use.
   */
  core.String clusterIpv4Cidr;
  /**
   * Whether a new subnetwork will be created automatically for the cluster.
   *
   * This field is only applicable when `use_ip_aliases` is true.
   */
  core.bool createSubnetwork;
  /**
   * The IP address range of the instance IPs in this cluster.
   *
   * This is applicable only if `create_subnetwork` is true.
   *
   * Set to blank to have a range will be chosen with the default size.
   *
   * Set to /netmask (e.g. `/14`) to have a range be chosen with a specific
   * netmask.
   *
   * Set to a
   * [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
   * notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
   * `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
   * to use.
   */
  core.String nodeIpv4Cidr;
  /**
   * The IP address range of the services IPs in this cluster. If blank, a range
   * will be automatically chosen with the default size.
   *
   * This field is only applicable when `use_ip_aliases` is true.
   *
   * Set to blank to have a range will be chosen with the default size.
   *
   * Set to /netmask (e.g. `/14`) to have a range be chosen with a specific
   * netmask.
   *
   * Set to a
   * [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
   * notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g.
   * `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range
   * to use.
   */
  core.String servicesIpv4Cidr;
  /**
   * A custom subnetwork name to be used if `create_subnetwork` is true.  If
   * this field is empty, then an automatic name will choosen for the new
   * subnetwork.
   */
  core.String subnetworkName;
  /** Whether alias IPs will be used for pod IPs in the cluster. */
  core.bool useIpAliases;

  IPAllocationPolicy();

  IPAllocationPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("clusterIpv4Cidr")) {
      clusterIpv4Cidr = _json["clusterIpv4Cidr"];
    }
    if (_json.containsKey("createSubnetwork")) {
      createSubnetwork = _json["createSubnetwork"];
    }
    if (_json.containsKey("nodeIpv4Cidr")) {
      nodeIpv4Cidr = _json["nodeIpv4Cidr"];
    }
    if (_json.containsKey("servicesIpv4Cidr")) {
      servicesIpv4Cidr = _json["servicesIpv4Cidr"];
    }
    if (_json.containsKey("subnetworkName")) {
      subnetworkName = _json["subnetworkName"];
    }
    if (_json.containsKey("useIpAliases")) {
      useIpAliases = _json["useIpAliases"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (clusterIpv4Cidr != null) {
      _json["clusterIpv4Cidr"] = clusterIpv4Cidr;
    }
    if (createSubnetwork != null) {
      _json["createSubnetwork"] = createSubnetwork;
    }
    if (nodeIpv4Cidr != null) {
      _json["nodeIpv4Cidr"] = nodeIpv4Cidr;
    }
    if (servicesIpv4Cidr != null) {
      _json["servicesIpv4Cidr"] = servicesIpv4Cidr;
    }
    if (subnetworkName != null) {
      _json["subnetworkName"] = subnetworkName;
    }
    if (useIpAliases != null) {
      _json["useIpAliases"] = useIpAliases;
    }
    return _json;
  }
}

/** Configuration for the Kubernetes Dashboard. */
class KubernetesDashboard {
  /** Whether the Kubernetes Dashboard is enabled for this cluster. */
  core.bool disabled;

  KubernetesDashboard();

  KubernetesDashboard.fromJson(core.Map _json) {
    if (_json.containsKey("disabled")) {
      disabled = _json["disabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (disabled != null) {
      _json["disabled"] = disabled;
    }
    return _json;
  }
}

/**
 * Configuration for the legacy Attribute Based Access Control authorization
 * mode.
 */
class LegacyAbac {
  /**
   * Whether the ABAC authorizer is enabled for this cluster. When enabled,
   * identities in the system, including service accounts, nodes, and
   * controllers, will have statically granted permissions beyond those
   * provided by the RBAC configuration or IAM.
   */
  core.bool enabled;

  LegacyAbac();

  LegacyAbac.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

/** ListClustersResponse is the result of ListClustersRequest. */
class ListClustersResponse {
  /**
   * A list of clusters in the project in the specified zone, or
   * across all ones.
   */
  core.List<Cluster> clusters;
  /**
   * If any zones are listed here, the list of clusters returned
   * may be missing those zones.
   */
  core.List<core.String> missingZones;

  ListClustersResponse();

  ListClustersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clusters")) {
      clusters = _json["clusters"].map((value) => new Cluster.fromJson(value)).toList();
    }
    if (_json.containsKey("missingZones")) {
      missingZones = _json["missingZones"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (clusters != null) {
      _json["clusters"] = clusters.map((value) => (value).toJson()).toList();
    }
    if (missingZones != null) {
      _json["missingZones"] = missingZones;
    }
    return _json;
  }
}

/** ListNodePoolsResponse is the result of ListNodePoolsRequest. */
class ListNodePoolsResponse {
  /** A list of node pools for a cluster. */
  core.List<NodePool> nodePools;

  ListNodePoolsResponse();

  ListNodePoolsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nodePools")) {
      nodePools = _json["nodePools"].map((value) => new NodePool.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (nodePools != null) {
      _json["nodePools"] = nodePools.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** ListOperationsResponse is the result of ListOperationsRequest. */
class ListOperationsResponse {
  /**
   * If any zones are listed here, the list of operations returned
   * may be missing the operations from those zones.
   */
  core.List<core.String> missingZones;
  /** A list of operations in the project in the specified zone. */
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("missingZones")) {
      missingZones = _json["missingZones"];
    }
    if (_json.containsKey("operations")) {
      operations = _json["operations"].map((value) => new Operation.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (missingZones != null) {
      _json["missingZones"] = missingZones;
    }
    if (operations != null) {
      _json["operations"] = operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * The authentication information for accessing the master endpoint.
 * Authentication can be done using HTTP basic auth or using client
 * certificates.
 */
class MasterAuth {
  /**
   * [Output only] Base64-encoded public certificate used by clients to
   * authenticate to the cluster endpoint.
   */
  core.String clientCertificate;
  /**
   * Configuration for client certificate authentication on the cluster.  If no
   * configuration is specified, a client certificate is issued.
   */
  ClientCertificateConfig clientCertificateConfig;
  /**
   * [Output only] Base64-encoded private key used by clients to authenticate
   * to the cluster endpoint.
   */
  core.String clientKey;
  /**
   * [Output only] Base64-encoded public certificate that is the root of
   * trust for the cluster.
   */
  core.String clusterCaCertificate;
  /**
   * The password to use for HTTP basic authentication to the master endpoint.
   * Because the master endpoint is open to the Internet, you should create a
   * strong password.  If a password is provided for cluster creation, username
   * must be non-empty.
   */
  core.String password;
  /**
   * The username to use for HTTP basic authentication to the master endpoint.
   * For clusters v1.6.0 and later, you can disable basic authentication by
   * providing an empty username.
   */
  core.String username;

  MasterAuth();

  MasterAuth.fromJson(core.Map _json) {
    if (_json.containsKey("clientCertificate")) {
      clientCertificate = _json["clientCertificate"];
    }
    if (_json.containsKey("clientCertificateConfig")) {
      clientCertificateConfig = new ClientCertificateConfig.fromJson(_json["clientCertificateConfig"]);
    }
    if (_json.containsKey("clientKey")) {
      clientKey = _json["clientKey"];
    }
    if (_json.containsKey("clusterCaCertificate")) {
      clusterCaCertificate = _json["clusterCaCertificate"];
    }
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("username")) {
      username = _json["username"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (clientCertificate != null) {
      _json["clientCertificate"] = clientCertificate;
    }
    if (clientCertificateConfig != null) {
      _json["clientCertificateConfig"] = (clientCertificateConfig).toJson();
    }
    if (clientKey != null) {
      _json["clientKey"] = clientKey;
    }
    if (clusterCaCertificate != null) {
      _json["clusterCaCertificate"] = clusterCaCertificate;
    }
    if (password != null) {
      _json["password"] = password;
    }
    if (username != null) {
      _json["username"] = username;
    }
    return _json;
  }
}

/**
 * Master authorized networks is a Beta feature.
 * Configuration options for the master authorized networks feature. Enabled
 * master authorized networks will disallow all external traffic to access
 * Kubernetes master through HTTPS except traffic from the given CIDR blocks,
 * Google Compute Engine Public IPs and Google Prod IPs.
 */
class MasterAuthorizedNetworksConfig {
  /**
   * cidr_blocks define up to 10 external networks that could access
   * Kubernetes master through HTTPS.
   */
  core.List<CidrBlock> cidrBlocks;
  /** Whether or not master authorized networks is enabled. */
  core.bool enabled;

  MasterAuthorizedNetworksConfig();

  MasterAuthorizedNetworksConfig.fromJson(core.Map _json) {
    if (_json.containsKey("cidrBlocks")) {
      cidrBlocks = _json["cidrBlocks"].map((value) => new CidrBlock.fromJson(value)).toList();
    }
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (cidrBlocks != null) {
      _json["cidrBlocks"] = cidrBlocks.map((value) => (value).toJson()).toList();
    }
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

/**
 * Configuration options for the NetworkPolicy feature.
 * https://kubernetes.io/docs/concepts/services-networking/networkpolicies/
 */
class NetworkPolicy {
  /** Whether network policy is enabled on the cluster. */
  core.bool enabled;
  /**
   * The selected network policy provider.
   * Possible string values are:
   * - "PROVIDER_UNSPECIFIED" : Not set
   * - "CALICO" : Tigera (Calico Felix).
   */
  core.String provider;

  NetworkPolicy();

  NetworkPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("provider")) {
      provider = _json["provider"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (provider != null) {
      _json["provider"] = provider;
    }
    return _json;
  }
}

/** Parameters that describe the nodes in a cluster. */
class NodeConfig {
  /**
   * A list of hardware accelerators to be attached to each node.
   * See https://cloud.google.com/compute/docs/gpus for more information about
   * support for GPUs.
   */
  core.List<AcceleratorConfig> accelerators;
  /**
   * Size of the disk attached to each node, specified in GB.
   * The smallest allowed disk size is 10GB.
   *
   * If unspecified, the default disk size is 100GB.
   */
  core.int diskSizeGb;
  /**
   * The image type to use for this node. Note that for a given image type,
   * the latest version of it will be used.
   */
  core.String imageType;
  /**
   * The map of Kubernetes labels (key/value pairs) to be applied to each node.
   * These will added in addition to any default label(s) that
   * Kubernetes may apply to the node.
   * In case of conflict in label keys, the applied set may differ depending on
   * the Kubernetes version -- it's best to assume the behavior is undefined
   * and conflicts should be avoided.
   * For more information, including usage and the valid values, see:
   * http://kubernetes.io/v1.1/docs/user-guide/labels.html
   */
  core.Map<core.String, core.String> labels;
  /**
   * The number of local SSD disks to be attached to the node.
   *
   * The limit for this value is dependant upon the maximum number of
   * disks available on a machine per zone. See:
   * https://cloud.google.com/compute/docs/disks/local-ssd#local_ssd_limits
   * for more information.
   */
  core.int localSsdCount;
  /**
   * The name of a Google Compute Engine [machine
   * type](/compute/docs/machine-types) (e.g.
   * `n1-standard-1`).
   *
   * If unspecified, the default machine type is
   * `n1-standard-1`.
   */
  core.String machineType;
  /**
   * The metadata key/value pairs assigned to instances in the cluster.
   *
   * Keys must conform to the regexp [a-zA-Z0-9-_]+ and be less than 128 bytes
   * in length. These are reflected as part of a URL in the metadata server.
   * Additionally, to avoid ambiguity, keys must not conflict with any other
   * metadata keys for the project or be one of the four reserved keys:
   * "instance-template", "kube-env", "startup-script", and "user-data"
   *
   * Values are free-form strings, and only have meaning as interpreted by
   * the image running in the instance. The only restriction placed on them is
   * that each value's size must be less than or equal to 32 KB.
   *
   * The total size of all keys and values must be less than 512 KB.
   */
  core.Map<core.String, core.String> metadata;
  /**
   * The set of Google API scopes to be made available on all of the
   * node VMs under the "default" service account.
   *
   * The following scopes are recommended, but not required, and by default are
   * not included:
   *
   * * `https://www.googleapis.com/auth/compute` is required for mounting
   * persistent storage on your nodes.
   * * `https://www.googleapis.com/auth/devstorage.read_only` is required for
   * communicating with **gcr.io**
   * (the [Google Container Registry](/container-registry/)).
   *
   * If unspecified, no scopes are added, unless Cloud Logging or Cloud
   * Monitoring are enabled, in which case their required scopes will be added.
   */
  core.List<core.String> oauthScopes;
  /**
   * Whether the nodes are created as preemptible VM instances. See:
   * https://cloud.google.com/compute/docs/instances/preemptible for more
   * information about preemptible VM instances.
   */
  core.bool preemptible;
  /**
   * The Google Cloud Platform Service Account to be used by the node VMs. If
   * no Service Account is specified, the "default" service account is used.
   */
  core.String serviceAccount;
  /**
   * The list of instance tags applied to all nodes. Tags are used to identify
   * valid sources or targets for network firewalls and are specified by
   * the client during cluster or node pool creation. Each tag within the list
   * must comply with RFC1035.
   */
  core.List<core.String> tags;

  NodeConfig();

  NodeConfig.fromJson(core.Map _json) {
    if (_json.containsKey("accelerators")) {
      accelerators = _json["accelerators"].map((value) => new AcceleratorConfig.fromJson(value)).toList();
    }
    if (_json.containsKey("diskSizeGb")) {
      diskSizeGb = _json["diskSizeGb"];
    }
    if (_json.containsKey("imageType")) {
      imageType = _json["imageType"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("localSsdCount")) {
      localSsdCount = _json["localSsdCount"];
    }
    if (_json.containsKey("machineType")) {
      machineType = _json["machineType"];
    }
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"];
    }
    if (_json.containsKey("oauthScopes")) {
      oauthScopes = _json["oauthScopes"];
    }
    if (_json.containsKey("preemptible")) {
      preemptible = _json["preemptible"];
    }
    if (_json.containsKey("serviceAccount")) {
      serviceAccount = _json["serviceAccount"];
    }
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (accelerators != null) {
      _json["accelerators"] = accelerators.map((value) => (value).toJson()).toList();
    }
    if (diskSizeGb != null) {
      _json["diskSizeGb"] = diskSizeGb;
    }
    if (imageType != null) {
      _json["imageType"] = imageType;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (localSsdCount != null) {
      _json["localSsdCount"] = localSsdCount;
    }
    if (machineType != null) {
      _json["machineType"] = machineType;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (oauthScopes != null) {
      _json["oauthScopes"] = oauthScopes;
    }
    if (preemptible != null) {
      _json["preemptible"] = preemptible;
    }
    if (serviceAccount != null) {
      _json["serviceAccount"] = serviceAccount;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    return _json;
  }
}

/**
 * NodeManagement defines the set of node management services turned on for the
 * node pool.
 */
class NodeManagement {
  /**
   * A flag that specifies whether the node auto-repair is enabled for the node
   * pool. If enabled, the nodes in this node pool will be monitored and, if
   * they fail health checks too many times, an automatic repair action will be
   * triggered.
   */
  core.bool autoRepair;
  /**
   * A flag that specifies whether node auto-upgrade is enabled for the node
   * pool. If enabled, node auto-upgrade helps keep the nodes in your node pool
   * up to date with the latest release version of Kubernetes.
   */
  core.bool autoUpgrade;
  /** Specifies the Auto Upgrade knobs for the node pool. */
  AutoUpgradeOptions upgradeOptions;

  NodeManagement();

  NodeManagement.fromJson(core.Map _json) {
    if (_json.containsKey("autoRepair")) {
      autoRepair = _json["autoRepair"];
    }
    if (_json.containsKey("autoUpgrade")) {
      autoUpgrade = _json["autoUpgrade"];
    }
    if (_json.containsKey("upgradeOptions")) {
      upgradeOptions = new AutoUpgradeOptions.fromJson(_json["upgradeOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (autoRepair != null) {
      _json["autoRepair"] = autoRepair;
    }
    if (autoUpgrade != null) {
      _json["autoUpgrade"] = autoUpgrade;
    }
    if (upgradeOptions != null) {
      _json["upgradeOptions"] = (upgradeOptions).toJson();
    }
    return _json;
  }
}

/**
 * NodePool contains the name and configuration for a cluster's node pool.
 * Node pools are a set of nodes (i.e. VM's), with a common configuration and
 * specification, under the control of the cluster master. They may have a set
 * of Kubernetes labels applied to them, which may be used to reference them
 * during pod scheduling. They may also be resized up or down, to accommodate
 * the workload.
 */
class NodePool {
  /**
   * Autoscaler configuration for this NodePool. Autoscaler is enabled
   * only if a valid configuration is present.
   */
  NodePoolAutoscaling autoscaling;
  /** The node configuration of the pool. */
  NodeConfig config;
  /**
   * The initial node count for the pool. You must ensure that your
   * Compute Engine <a href="/compute/docs/resource-quotas">resource quota</a>
   * is sufficient for this number of instances. You must also have available
   * firewall and routes quota.
   */
  core.int initialNodeCount;
  /**
   * [Output only] The resource URLs of [instance
   * groups](/compute/docs/instance-groups/) associated with this
   * node pool.
   */
  core.List<core.String> instanceGroupUrls;
  /** NodeManagement configuration for this NodePool. */
  NodeManagement management;
  /** The name of the node pool. */
  core.String name;
  /** [Output only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * [Output only] The status of the nodes in this pool instance.
   * Possible string values are:
   * - "STATUS_UNSPECIFIED" : Not set.
   * - "PROVISIONING" : The PROVISIONING state indicates the node pool is being
   * created.
   * - "RUNNING" : The RUNNING state indicates the node pool has been created
   * and is fully usable.
   * - "RUNNING_WITH_ERROR" : The RUNNING_WITH_ERROR state indicates the node
   * pool has been created
   * and is partially usable. Some error state has occurred and some
   * functionality may be impaired. Customer may need to reissue a request
   * or trigger a new update.
   * - "RECONCILING" : The RECONCILING state indicates that some work is
   * actively being done on
   * the node pool, such as upgrading node software. Details can
   * be found in the `statusMessage` field.
   * - "STOPPING" : The STOPPING state indicates the node pool is being deleted.
   * - "ERROR" : The ERROR state indicates the node pool may be unusable.
   * Details
   * can be found in the `statusMessage` field.
   */
  core.String status;
  /**
   * [Output only] Additional information about the current status of this
   * node pool instance, if available.
   */
  core.String statusMessage;
  /** [Output only] The version of the Kubernetes of this node. */
  core.String version;

  NodePool();

  NodePool.fromJson(core.Map _json) {
    if (_json.containsKey("autoscaling")) {
      autoscaling = new NodePoolAutoscaling.fromJson(_json["autoscaling"]);
    }
    if (_json.containsKey("config")) {
      config = new NodeConfig.fromJson(_json["config"]);
    }
    if (_json.containsKey("initialNodeCount")) {
      initialNodeCount = _json["initialNodeCount"];
    }
    if (_json.containsKey("instanceGroupUrls")) {
      instanceGroupUrls = _json["instanceGroupUrls"];
    }
    if (_json.containsKey("management")) {
      management = new NodeManagement.fromJson(_json["management"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (autoscaling != null) {
      _json["autoscaling"] = (autoscaling).toJson();
    }
    if (config != null) {
      _json["config"] = (config).toJson();
    }
    if (initialNodeCount != null) {
      _json["initialNodeCount"] = initialNodeCount;
    }
    if (instanceGroupUrls != null) {
      _json["instanceGroupUrls"] = instanceGroupUrls;
    }
    if (management != null) {
      _json["management"] = (management).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/**
 * NodePoolAutoscaling contains information required by cluster autoscaler to
 * adjust the size of the node pool to the current cluster usage.
 */
class NodePoolAutoscaling {
  /** Is autoscaling enabled for this node pool. */
  core.bool enabled;
  /**
   * Maximum number of nodes in the NodePool. Must be >= min_node_count. There
   * has to enough quota to scale up the cluster.
   */
  core.int maxNodeCount;
  /**
   * Minimum number of nodes in the NodePool. Must be >= 1 and <=
   * max_node_count.
   */
  core.int minNodeCount;

  NodePoolAutoscaling();

  NodePoolAutoscaling.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("maxNodeCount")) {
      maxNodeCount = _json["maxNodeCount"];
    }
    if (_json.containsKey("minNodeCount")) {
      minNodeCount = _json["minNodeCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (maxNodeCount != null) {
      _json["maxNodeCount"] = maxNodeCount;
    }
    if (minNodeCount != null) {
      _json["minNodeCount"] = minNodeCount;
    }
    return _json;
  }
}

/**
 * This operation resource represents operations that may have happened or are
 * happening on the cluster. All fields are output only.
 */
class Operation {
  /** Detailed operation progress, if available. */
  core.String detail;
  /** The server-assigned ID for the operation. */
  core.String name;
  /**
   * The operation type.
   * Possible string values are:
   * - "TYPE_UNSPECIFIED" : Not set.
   * - "CREATE_CLUSTER" : Cluster create.
   * - "DELETE_CLUSTER" : Cluster delete.
   * - "UPGRADE_MASTER" : A master upgrade.
   * - "UPGRADE_NODES" : A node upgrade.
   * - "REPAIR_CLUSTER" : Cluster repair.
   * - "UPDATE_CLUSTER" : Cluster update.
   * - "CREATE_NODE_POOL" : Node pool create.
   * - "DELETE_NODE_POOL" : Node pool delete.
   * - "SET_NODE_POOL_MANAGEMENT" : Set node pool management.
   * - "AUTO_REPAIR_NODES" : Automatic node pool repair.
   * - "AUTO_UPGRADE_NODES" : Automatic node upgrade.
   * - "SET_LABELS" : Set labels.
   * - "SET_MASTER_AUTH" : Set/generate master auth materials
   * - "SET_NODE_POOL_SIZE" : Set node pool size.
   * - "SET_NETWORK_POLICY" : Updates network policy for a cluster.
   */
  core.String operationType;
  /** Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * The current status of the operation.
   * Possible string values are:
   * - "STATUS_UNSPECIFIED" : Not set.
   * - "PENDING" : The operation has been created.
   * - "RUNNING" : The operation is currently running.
   * - "DONE" : The operation is done, either cancelled or completed.
   * - "ABORTING" : The operation is aborting.
   */
  core.String status;
  /** If an error has occurred, a textual description of the error. */
  core.String statusMessage;
  /** Server-defined URL for the target of the operation. */
  core.String targetLink;
  /**
   * The name of the Google Compute Engine
   * [zone](/compute/docs/zones#available) in which the operation
   * is taking place.
   */
  core.String zone;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("detail")) {
      detail = _json["detail"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
    }
    if (_json.containsKey("targetLink")) {
      targetLink = _json["targetLink"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (detail != null) {
      _json["detail"] = detail;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (targetLink != null) {
      _json["targetLink"] = targetLink;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/**
 * RollbackNodePoolUpgradeRequest rollbacks the previously Aborted or Failed
 * NodePool upgrade. This will be an no-op if the last upgrade successfully
 * completed.
 */
class RollbackNodePoolUpgradeRequest {

  RollbackNodePoolUpgradeRequest();

  RollbackNodePoolUpgradeRequest.fromJson(core.Map _json) {
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    return _json;
  }
}

/** Container Engine service configuration. */
class ServerConfig {
  /** Version of Kubernetes the service deploys by default. */
  core.String defaultClusterVersion;
  /** Default image type. */
  core.String defaultImageType;
  /** List of valid image types. */
  core.List<core.String> validImageTypes;
  /** List of valid master versions. */
  core.List<core.String> validMasterVersions;
  /** List of valid node upgrade target versions. */
  core.List<core.String> validNodeVersions;

  ServerConfig();

  ServerConfig.fromJson(core.Map _json) {
    if (_json.containsKey("defaultClusterVersion")) {
      defaultClusterVersion = _json["defaultClusterVersion"];
    }
    if (_json.containsKey("defaultImageType")) {
      defaultImageType = _json["defaultImageType"];
    }
    if (_json.containsKey("validImageTypes")) {
      validImageTypes = _json["validImageTypes"];
    }
    if (_json.containsKey("validMasterVersions")) {
      validMasterVersions = _json["validMasterVersions"];
    }
    if (_json.containsKey("validNodeVersions")) {
      validNodeVersions = _json["validNodeVersions"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (defaultClusterVersion != null) {
      _json["defaultClusterVersion"] = defaultClusterVersion;
    }
    if (defaultImageType != null) {
      _json["defaultImageType"] = defaultImageType;
    }
    if (validImageTypes != null) {
      _json["validImageTypes"] = validImageTypes;
    }
    if (validMasterVersions != null) {
      _json["validMasterVersions"] = validMasterVersions;
    }
    if (validNodeVersions != null) {
      _json["validNodeVersions"] = validNodeVersions;
    }
    return _json;
  }
}

/** SetAddonsConfigRequest sets the addons associated with the cluster. */
class SetAddonsConfigRequest {
  /**
   * The desired configurations for the various addons available to run in the
   * cluster.
   */
  AddonsConfig addonsConfig;

  SetAddonsConfigRequest();

  SetAddonsConfigRequest.fromJson(core.Map _json) {
    if (_json.containsKey("addonsConfig")) {
      addonsConfig = new AddonsConfig.fromJson(_json["addonsConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (addonsConfig != null) {
      _json["addonsConfig"] = (addonsConfig).toJson();
    }
    return _json;
  }
}

/**
 * SetLabelsRequest sets the Google Cloud Platform labels on a Google Container
 * Engine cluster, which will in turn set them for Google Compute Engine
 * resources used by that cluster
 */
class SetLabelsRequest {
  /**
   * The fingerprint of the previous set of labels for this resource,
   * used to detect conflicts. The fingerprint is initially generated by
   * Container Engine and changes after every request to modify or update
   * labels. You must always provide an up-to-date fingerprint hash when
   * updating or changing labels. Make a <code>get()</code> request to the
   * resource to get the latest fingerprint.
   */
  core.String labelFingerprint;
  /** The labels to set for that cluster. */
  core.Map<core.String, core.String> resourceLabels;

  SetLabelsRequest();

  SetLabelsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("labelFingerprint")) {
      labelFingerprint = _json["labelFingerprint"];
    }
    if (_json.containsKey("resourceLabels")) {
      resourceLabels = _json["resourceLabels"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (labelFingerprint != null) {
      _json["labelFingerprint"] = labelFingerprint;
    }
    if (resourceLabels != null) {
      _json["resourceLabels"] = resourceLabels;
    }
    return _json;
  }
}

/**
 * SetLegacyAbacRequest enables or disables the ABAC authorization mechanism for
 * a cluster.
 */
class SetLegacyAbacRequest {
  /** Whether ABAC authorization will be enabled in the cluster. */
  core.bool enabled;

  SetLegacyAbacRequest();

  SetLegacyAbacRequest.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    return _json;
  }
}

/** SetLocationsRequest sets the locations of the cluster. */
class SetLocationsRequest {
  /**
   * The desired list of Google Compute Engine
   * [locations](/compute/docs/zones#available) in which the cluster's nodes
   * should be located. Changing the locations a cluster is in will result
   * in nodes being either created or removed from the cluster, depending on
   * whether locations are being added or removed.
   *
   * This list must always include the cluster's primary zone.
   */
  core.List<core.String> locations;

  SetLocationsRequest();

  SetLocationsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("locations")) {
      locations = _json["locations"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (locations != null) {
      _json["locations"] = locations;
    }
    return _json;
  }
}

/** SetLoggingServiceRequest sets the logging service of a cluster. */
class SetLoggingServiceRequest {
  /**
   * The logging service the cluster should use to write metrics.
   * Currently available options:
   *
   * * "logging.googleapis.com" - the Google Cloud Logging service
   * * "none" - no metrics will be exported from the cluster
   */
  core.String loggingService;

  SetLoggingServiceRequest();

  SetLoggingServiceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("loggingService")) {
      loggingService = _json["loggingService"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (loggingService != null) {
      _json["loggingService"] = loggingService;
    }
    return _json;
  }
}

/** SetMasterAuthRequest updates the admin password of a cluster. */
class SetMasterAuthRequest {
  /**
   * The exact form of action to be taken on the master auth
   * Possible string values are:
   * - "UNKNOWN" : Operation is unknown and will error out
   * - "SET_PASSWORD" : Set the password to a user generated value.
   * - "GENERATE_PASSWORD" : Generate a new password and set it to that.
   */
  core.String action;
  /** A description of the update. */
  MasterAuth update;

  SetMasterAuthRequest();

  SetMasterAuthRequest.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("update")) {
      update = new MasterAuth.fromJson(_json["update"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    if (update != null) {
      _json["update"] = (update).toJson();
    }
    return _json;
  }
}

/** SetMonitoringServiceRequest sets the monitoring service of a cluster. */
class SetMonitoringServiceRequest {
  /**
   * The monitoring service the cluster should use to write metrics.
   * Currently available options:
   *
   * * "monitoring.googleapis.com" - the Google Cloud Monitoring service
   * * "none" - no metrics will be exported from the cluster
   */
  core.String monitoringService;

  SetMonitoringServiceRequest();

  SetMonitoringServiceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("monitoringService")) {
      monitoringService = _json["monitoringService"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (monitoringService != null) {
      _json["monitoringService"] = monitoringService;
    }
    return _json;
  }
}

/** SetNetworkPolicyRequest enables/disables network policy for a cluster. */
class SetNetworkPolicyRequest {
  /** Configuration options for the NetworkPolicy feature. */
  NetworkPolicy networkPolicy;

  SetNetworkPolicyRequest();

  SetNetworkPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("networkPolicy")) {
      networkPolicy = new NetworkPolicy.fromJson(_json["networkPolicy"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (networkPolicy != null) {
      _json["networkPolicy"] = (networkPolicy).toJson();
    }
    return _json;
  }
}

/**
 * SetNodePoolAutoscalingRequest sets the autoscaler settings of a node pool.
 */
class SetNodePoolAutoscalingRequest {
  /** Autoscaling configuration for the node pool. */
  NodePoolAutoscaling autoscaling;

  SetNodePoolAutoscalingRequest();

  SetNodePoolAutoscalingRequest.fromJson(core.Map _json) {
    if (_json.containsKey("autoscaling")) {
      autoscaling = new NodePoolAutoscaling.fromJson(_json["autoscaling"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (autoscaling != null) {
      _json["autoscaling"] = (autoscaling).toJson();
    }
    return _json;
  }
}

/**
 * SetNodePoolManagementRequest sets the node management properties of a node
 * pool.
 */
class SetNodePoolManagementRequest {
  /** NodeManagement configuration for the node pool. */
  NodeManagement management;

  SetNodePoolManagementRequest();

  SetNodePoolManagementRequest.fromJson(core.Map _json) {
    if (_json.containsKey("management")) {
      management = new NodeManagement.fromJson(_json["management"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (management != null) {
      _json["management"] = (management).toJson();
    }
    return _json;
  }
}

/**
 * SetNodePoolSizeRequest sets the size a node
 * pool.
 */
class SetNodePoolSizeRequest {
  /** The desired node count for the pool. */
  core.int nodeCount;

  SetNodePoolSizeRequest();

  SetNodePoolSizeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("nodeCount")) {
      nodeCount = _json["nodeCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (nodeCount != null) {
      _json["nodeCount"] = nodeCount;
    }
    return _json;
  }
}

/**
 * StartIPRotationRequest creates a new IP for the cluster and then performs
 * a node upgrade on each node pool to point to the new IP.
 */
class StartIPRotationRequest {

  StartIPRotationRequest();

  StartIPRotationRequest.fromJson(core.Map _json) {
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    return _json;
  }
}

/** UpdateClusterRequest updates the settings of a cluster. */
class UpdateClusterRequest {
  /** A description of the update. */
  ClusterUpdate update;

  UpdateClusterRequest();

  UpdateClusterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("update")) {
      update = new ClusterUpdate.fromJson(_json["update"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (update != null) {
      _json["update"] = (update).toJson();
    }
    return _json;
  }
}

/** UpdateMasterRequest updates the master of the cluster. */
class UpdateMasterRequest {
  /**
   * The Kubernetes version to change the master to. The only valid value is the
   * latest supported version. Use "-" to have the server automatically select
   * the latest version.
   */
  core.String masterVersion;

  UpdateMasterRequest();

  UpdateMasterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("masterVersion")) {
      masterVersion = _json["masterVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (masterVersion != null) {
      _json["masterVersion"] = masterVersion;
    }
    return _json;
  }
}

/** UpdateNodePoolRequests update a node pool's image and/or version. */
class UpdateNodePoolRequest {
  /** The desired image type for the node pool. */
  core.String imageType;
  /**
   * The Kubernetes version to change the nodes to (typically an
   * upgrade). Use `-` to upgrade to the latest version supported by
   * the server.
   */
  core.String nodeVersion;

  UpdateNodePoolRequest();

  UpdateNodePoolRequest.fromJson(core.Map _json) {
    if (_json.containsKey("imageType")) {
      imageType = _json["imageType"];
    }
    if (_json.containsKey("nodeVersion")) {
      nodeVersion = _json["nodeVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (imageType != null) {
      _json["imageType"] = imageType;
    }
    if (nodeVersion != null) {
      _json["nodeVersion"] = nodeVersion;
    }
    return _json;
  }
}
