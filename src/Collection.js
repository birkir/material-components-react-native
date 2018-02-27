import React, { Component } from 'react';
import { ViewPropTypes, requireNativeComponent } from 'react-native';
import { PropTypes } from 'prop-types';

class RNMaterialComponentsCollection extends Component {

  static propTypes = {
    ...ViewPropTypes,
  }

  render () {
    return (
      <Collection
        {...this.props}
      />
    );
  }
}

const Collection = requireNativeComponent('RNMaterialComponentsCollection', RNMaterialComponentsCollection);

export default RNMaterialComponentsCollection
