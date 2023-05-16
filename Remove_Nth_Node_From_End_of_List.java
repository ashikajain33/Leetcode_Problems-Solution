class Solution {
    public ListNode removeNthFromEnd(ListNode head, int n) {
        int count=0;
        if(head==null || head.next==null && n==1)
            return null;
        ListNode temp=head;
        while(temp!=null &&temp.next!=null)
        {
            temp=temp.next;
            count++;
        }
        int k=count-n;
        if(k<0)
        {
            head=head.next;
            return head;
        }
        ListNode slow=head;
        for(int i=0;i<k;i++)
            slow=slow.next;
        slow.next=slow.next.next;
        return head;
    }
}