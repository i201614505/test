package ButtoninTable;


import java.awt.Component;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import javax.swing.AbstractCellEditor;
import javax.swing.JSlider;
import javax.swing.JTable;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.table.TableCellEditor;
import javax.swing.table.TableCellRenderer;

/**
 * An implementation of an embedded Slider control     inside a JTable
 * <p/>
 * Copyright (C) 2010 by Ilya Volodarsky
 * <p/>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License. 
 * You may obtain a copy of the License at
 * <p/>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p/>
 * Unless required by applicable law or agreed to in writing, software 
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
public class TableSlider extends AbstractCellEditor implements TableCellEditor, TableCellRenderer
{
	private static final long serialVersionUID = -7934280589471258267L;

	public interface TableSliderMovedHandler
	{
		/**
		 * Called when the slider moves.
		 * @param row The row in which the slider is in the table.
		 * @param column The column the slider is in in the table.
		 * @param value The value [0, 100] that the slider was moved to.
		 */
		void onSlide(int row, int column, int value);
	}

	private int defaultValue;
	private List<TableSliderMovedHandler> handlers;
	private Hashtable<Integer, JSlider> sliders;

	public TableSlider(int defaultValue)
	{
		this.defaultValue = defaultValue;
		handlers = new ArrayList<TableSliderMovedHandler>();
		sliders = new Hashtable<Integer, JSlider>();
	}

	/**
	 * Add a slide callback handler
	 * @param handler
	 */
	public void addHandler(TableSliderMovedHandler handler)
	{
		if (handlers != null)
		{
			handlers.add(handler);
		}
	}

	/**
	 * Remove a slide callback handler
	 * @param handler
	 */
	public void removeHandler(TableSliderMovedHandler handler)
	{
		if (handlers != null)
		{
			handlers.remove(handler);
		}
	}

    /**
     * Removes the component at that row index
     * @param row The row index which was just removed
     */
    public void removeRow(int row)
    {
    	if(sliders.containsKey(row))
        {
    		sliders.remove(row);
        }
    }
    
    /**
     * Moves the component at oldRow index to newRow index
     * @param oldRow The old row index
     * @param newRow THe new row index
     */
    public void moveRow(int oldRow, int newRow)
    {
    	if(sliders.containsKey(oldRow))
        {
    		JSlider slider = sliders.remove(oldRow);
    		sliders.put(newRow, slider);
        }
    }
    
	
	public Component getTableCellRendererComponent(JTable table, Object value, boolean selected, boolean focus, final int row, final int column)
	{
		JSlider slider = null;
		if(sliders.containsKey(row))
		{
			slider = sliders.get(row);
		}
		else
		{
			slider = new JSlider(JSlider.HORIZONTAL, 0, 100, defaultValue);
			slider.addChangeListener(new ChangeListener()
			{
				public void stateChanged(ChangeEvent e)
				{
					JSlider source = (JSlider)e.getSource();
				
					//if (!source.getValueIsAdjusting())
						//{
						int sliderValue = (int)source.getValue();

						if (handlers != null)
						{
							for (TableSliderMovedHandler handler : handlers)
							{
								handler.onSlide(row, column, (Integer)sliderValue);
							}
						}

				}
				//}
			}
			);
			sliders.put(row, slider);
		}

		return slider;
	}

	public Component getTableCellEditorComponent(JTable table, Object value, boolean selected, int row, int column)
	{
			JSlider slider = null;
			if(sliders.containsKey(row))
			{
				slider = sliders.get(row);
			}
			else
			{
				slider = new JSlider(JSlider.HORIZONTAL, 0, 100, defaultValue);
				sliders.put(row, slider);
			}

			if(value != null && value instanceof Integer)
			{
				slider.setValue((Integer)value);
			}

		return slider;
	}

	public void setSliderValue(int row, int value)
	{
		JSlider slider = null;
		if(sliders.containsKey(row))
		{
			slider = sliders.get(row);
			slider.setValue(value);
		}
	}

	public Object getCellEditorValue()
	{
		return new Integer(0);
	}

	public void dispose()
	{
		if (handlers != null)
		{
			handlers.clear();
		}
	}
}
