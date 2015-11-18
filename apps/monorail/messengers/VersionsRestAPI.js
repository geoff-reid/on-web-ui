// Copyright 2015, EMC, Inc.

'use strict';

import { MONORAIL_API } from '../config/index';
import RestAPI from 'common-web-ui/lib/RestAPI';

export default class VersionsRestAPI extends RestAPI {

  api = MONORAIL_API;
  entity = 'versions';

  get() {
    return new Promise((resolve, reject) => {
      this.http.get(this.url)
        .accept('json')
        .end((err, res) => {
          if (err) { return reject(err); }
          resolve(res && res.body);
        });
    });
  }

}
