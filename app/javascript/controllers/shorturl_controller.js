import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["heading", "enterLink"];

  connect() {
    this.headingTarget.textContent = "Make Your Links Smaller!";
    this.headingTarget.className = "text-primary text-center pt-5";
    this.enterLinkTarget.textContent = "Enter your link below";
    this.enterLinkTarget.className = "text-success text-center pt-5";
  }
}
