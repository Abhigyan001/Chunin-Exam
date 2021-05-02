import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["heading", "enterLink", "input", "button"];

  connect() {
    this.headingTarget.textContent = "Make Your Links Smaller!";
    this.headingTarget.className = "text-primary pt-5";
    this.enterLinkTarget.textContent = "Enter your link below";
    this.enterLinkTarget.className = "text-success pt-1";
    this.inputTarget.className = "p-2 w-50 mt-4 mb-3";
    this.buttonTarget.className = "btn btn-dark mt-4";
  }
}
