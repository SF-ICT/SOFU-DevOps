import { LightningElement, api } from 'lwc';

export default class GaFlowLauncher extends LightningElement {
  @api flowName; // Accepts Flow API name from App Builder or code
  inputVariables = [];

  connectedCallback() {
    const clientId = this.getGA4ClientId();

    this.inputVariables = [
      {
        name: 'clientId',  // must match Flow input variable
        type: 'String',
        value: clientId
      }
    ];
  }

  getGA4ClientId() {
    const match = document.cookie.match(/_ga=GA\\d+\\.\\d+\\.(\\d+)\\.(\\d+)/);
    if (match) {
      return `${match[1]}.${match[2]}`;
    }
    // fallback ID if GA cookie is missing
    return `${Date.now()}.${Math.floor(Math.random() * 100000)}`;
  }

  handleStatusChange(event) {
    if (event.detail.status === 'FINISHED') {
      console.log('Flow completed.');
    }
  }
}