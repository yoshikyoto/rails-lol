// @flow
export class Hello {
  name: string;

  constructor(name: string) {
    this.name = name;
  }

  say() {
    console.log(this.name);
  }
}

export default new Hello('namae');
