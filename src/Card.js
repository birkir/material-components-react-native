
import React, { Component } from 'react';
import { ViewPropTypes, ColorPropType, processColor, requireNativeComponent } from 'react-native';
import { PropTypes } from 'prop-types';

class RNMaterialComponentsCard extends Component {

  static propTypes = {
    ...ViewPropTypes,
    cornerRadius: PropTypes.number,
    shadowElevation: PropTypes.number,
    borderWidth: PropTypes.number,
    borderColor: ColorPropType,
  }

  render () {
    return (
      <Card
        {...this.props}
      />
    );
  }
}

const Card = requireNativeComponent('RNMaterialComponentsCard', RNMaterialComponentsCard);

export default RNMaterialComponentsCard
