import { myFetch } from "./fetch.js";

export function getList() {
    return myFetch('getusers');
}