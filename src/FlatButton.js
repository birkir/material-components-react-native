
import React, { Component } from 'react';
import { ViewPropTypes, ColorPropType, EdgeInsetsPropType, requireNativeComponent } from 'react-native';
import { PropTypes } from 'prop-types';

class RNMaterialComponentsFlatButton extends Component {

  static propTypes = {
    ...ViewPropTypes,
    title: PropTypes.string,
    enabled: PropTypes.bool,
    children: PropTypes.string,
    hitAreaInsets: EdgeInsetsPropType,
    disabledAlpha: PropTypes.number,
    uppercaseTitle: PropTypes.bool,
    customTitleColor: ColorPropType,
    underlyingColorHint: ColorPropType,
    hasOpaqueBackground: PropTypes.bool,
    inkMaxRippleRadius: PropTypes.number,
    inkStyle: PropTypes.string,
    inkColor: ColorPropType,
  }

  static defaultProps = {
    enabled: true,
    uppercaseTitle: true,
  }

  render () {
    const {
      children,
      ...rest,
    } = this.props;
    return (
      <FlatButton
        {...rest}
        title={children}
      />
    );
  }
}

const FlatButton = requireNativeComponent('RNMaterialComponentsFlatButton', RNMaterialComponentsFlatButton);

export default RNMaterialComponentsFlatButton
