export class Hello {
  constructor(name) {
    this.name = name;
  }

  say() {
    console.log(this.name);
  }
}

export default new Hello('namae');
